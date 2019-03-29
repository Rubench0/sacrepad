<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use App\Service\Helpers;
use App\Service\JwtAuth;
use App\Entity\User;
use App\Entity\Student;
use App\Entity\Facilitator;
use App\Entity\NClassificationSubject;
use App\Entity\NTypesSubject;
use App\Entity\Subject;
use App\Entity\Cohort;
use App\Entity\Classroom;
use App\Entity\Lection;
use App\Entity\NDays;
use App\Entity\NDaysHasClass;
use App\Entity\Inscription;


class StudyControlController extends AbstractController {
	

	/**
	 * @Route("/studycontrol/facilitators", name="studycontrol_view_facilitators", methods={"POST"})
	 */
	public function facilitatorsAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$users =  $em->getRepository(User::class)->findAll();
			foreach ($users as $key => $value) {
				if ($users[$key]->getFacilitator()) {
					$data[] = [
						'id' => $users[$key]->getId(),
						'name' => $users[$key]->getFacilitator()->getName(),
						'surname' => $users[$key]->getFacilitator()->getSurname(),
					];
				}
			}
			$helpers->binnacleAction('User','consulta',$createdAt,'Consultando lista de facilitadores.',$identity->id);
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/students", name="studycontrol_view_students", methods={"POST"})
	 */
	public function studentsAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$users =  $em->getRepository(User::class)->findAll();
			foreach ($users as $key => $value) {
				if ($users[$key]->getStudent()) {
					$data[] = [
						'id' => $users[$key]->getId(),
						'name' => $users[$key]->getStudent()->getName(),
						'surname' => $users[$key]->getStudent()->getSurname(),
						'identification' => $users[$key]->getStudent()->getIdentification(),
					];
				}
			}
			$helpers->binnacleAction('User','consulta',$createdAt,'Consultando lista de estudiantes.',$identity->id);
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/get/selects", name="studycontrol_view_nclasssubjects", methods={"POST"})
	 */
	public function getSelects(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');
		$table = $request->request->get('table');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			switch ($table) {
				case 'clasifications':
					$records =  $em->getRepository(NClassificationSubject::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getName(),
						];
					}
				break;
				case 'types':
					$records =  $em->getRepository(NTypesSubject::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getName(),
						];
					}
				break;
				case 'cohorts':
					$records =  $em->getRepository(Cohort::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getCode(),
						];
					}
				break;
				case 'subjects':
					$records =  $em->getRepository(Subject::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getName(),
						];
					}
				break;
				case 'classrooms':
					$records =  $em->getRepository(Classroom::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getName(),
						];
					}
				break;
				case 'facilitators':
					$records =  $em->getRepository(Facilitator::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getName().' '.$records[$key]->getSurname(),
						];
					}
				break;
				case 'days':
					$records =  $em->getRepository(NDays::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getDay(),
						];
					}
				break;
			}

			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/subject/new", name="studycontrol_subject_new", methods={"POST"})
	 */
	public function SubjectRegistry(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$json = $request->request->get('form');
			$form = json_decode($json);

			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'El formulario no puede estar vació.',
	 		);

	 		if ($form != null) {
	 			$createdAt = new \Datetime('now');
	 			$identity = $jwtauth->checkToken($token, true);

	 			$name = (isset($form->name)) ? $form->name : null;
	 			$description = (isset($form->description)) ? $form->description : null;
	 			$classification_id = (isset($form->classification)) ? $form->classification : null;
	 			$type_id = (isset($form->type)) ? $form->type : null;
	 			$cohort_id = (isset($form->cohort)) ? $form->cohort : null;

				if ($name != null) {
					$em = $this->getDoctrine()->getManager();
					$isset_data = $em->getRepository(Subject::class)->findBy(array('name' => $name));
					if (count($isset_data) == 0) {
						$Subject = new Subject();
						$Subject->setName($name);
						$Subject->setDescription($description);
						$cohort = $em->getRepository(Cohort::class)->findOneById($cohort_id);
						$Subject->setCohort($cohort);
						$classification = $em->getRepository(NClassificationSubject::class)->findOneById($classification_id);
						$Subject->setNClassificationSubject($classification);
						$type = $em->getRepository(NTypesSubject::class)->findOneById($type_id);
						$Subject->setNTypesSubject($type);
						$Subject->setCreateTime($createdAt);
						$user = $em->getRepository(User::class)->findOneById($identity->id);
						$Subject->setUser($user);
						$em->persist($Subject);
		    			$em->flush();
		    			$helpers->binnacleAction('Subject','registro',$createdAt,'Registrando asignatura '.$name.'.',$identity->id);
						$response = array(
							'status' => 'success',
							'code' => 200,
							'msg' => 'Registro creado exitosamente.',
			 			);
					} else {
						$response = array(
							'status' => 'error',
							'code' => 400,
							'msg' => 'El registro ya se encuentra en base de datos.',
	 					);
					}
				}
	 		
	 		}
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}
		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/data/tables", name="studycontrol_view_subject", methods={"POST"})
	 */
	public function ViewDataAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$table = $request->request->get('table');
			switch ($table) {
				case 'Subject':
					$subject =  $em->getRepository(Subject::class)->findAll();
					foreach ($subject as $key => $value) {
						$data[] = [
							'id' => $subject[$key]->getId(),
							'name' => $subject[$key]->getName(),
							'classification' => $subject[$key]->getNClassificationSubject()->getName(),
							'cohort' => $subject[$key]->getCohort()->getCode(),
						];
					}
					$helpers->binnacleAction('Subject','consulta',$createdAt,'Consultando lista de asignaturas.',$identity->id);
				break;
				case 'Lection':
					$lection =  $em->getRepository(Lection::class)->findAll();
					foreach ($lection as $key => $value) {
						$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('class'=>$lection[$key]->getId()));
						$data[] = [
							'id' => $lection[$key]->getId(),
							'code' => $lection[$key]->getCode(),
							'subject' => $lection[$key]->getSubject()->getName(),
							'classroom' => $lection[$key]->getClassroom()->getName(),
							'limit' => $lection[$key]->getLimix(),
							'inscriptions' => count($inscriptions),
							'facilitator' => $lection[$key]->getFacilitator()->getName().' '.$lection[$key]->getFacilitator()->getSurname(),
						];
					}
					$helpers->binnacleAction('Lection','consulta',$createdAt,'Consultando lista de clases.',$identity->id);
				break;
			}
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/get/data", name="studycontrol_get_data", methods={"POST"})
	 */
	public function DataGet(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$id_data = $request->request->get('id');
			$table_find = $request->request->get('table');
			$identity = $jwtauth->checkToken($token, true);
			switch ($table_find) {
				case 'Subject':
					$Subject =  $em->getRepository(Subject::class)->findOneById($id_data);
					$data = [
						'id' => $Subject->getId(),
						'name' => $Subject->getName(),
						'description' => $Subject->getDescription(),
						'classification' => $Subject->getNClassificationSubject()->getId(),
						'type' => $Subject->getNTypesSubject()->getId(),
						'cohort' => $Subject->getCohort()->getId(),
					];
					$helpers->binnacleAction('Subject','consulta',$createdAt,'Consultando datos de asignatura',$identity->id);
				break;
				case 'Lection':
					$Lection =  $em->getRepository(Lection::class)->findOneById($id_data);
					$schedule =  $em->getRepository(NDaysHasClass::class)->findBy(array('class'=>$id_data));
					$days = array();
					foreach ($schedule as $key => $value) {
						$days[] = [
							'day' => $schedule[$key]->getNDays()->getDay(),
							'classtime' => $schedule[$key]->getClassTime(),
							'hours' => $schedule[$key]->getHours(),
						];
					}
					$data = [
						'id' => $Lection->getId(),
						'code' => $Lection->getCode(),
						'subject' => $Lection->getSubject()->getId(),
						'classroom' => $Lection->getClassroom()->getId(),
						'facilitator' => $Lection->getFacilitator()->getId(),
						'limit' => $Lection->getLimix(),
						'days' => $days,
					];
					$helpers->binnacleAction('Lection','consulta',$createdAt,'Consultando datos de asignatura',$identity->id);
				break;
			}
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/edit/data", name="studycontrol_edit_data", methods={"POST"})
	 */
	public function DataEdit(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$json = $request->request->get('form');
			$table_find = $request->request->get('table');
			$form = json_decode($json);
			
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'Error al actualizar, dato vacio.',
	 		);

 			$updateAt = new \Datetime('now');
	 		if ($json != null) {
				$name = (isset($form->name)) ? $form->name : null;
					if ($form->id != null) {
						switch ($table_find) {
							case 'Subject':
			 					$description = (isset($form->description)) ? $form->description : null;
			 					$classification_id = (isset($form->classification)) ? $form->classification : null;
			 					$type_id = (isset($form->type)) ? $form->type : null;
			 					$cohort_id = (isset($form->cohort)) ? $form->cohort : null;

								$Subject =  $em->getRepository(Subject::class)->findOneById($form->id);
								$Subject->setName($name);
								$Subject->setDescription($description);
								$cohort = $em->getRepository(Cohort::class)->findOneById($cohort_id);
								$Subject->setCohort($cohort);
								$classification = $em->getRepository(NClassificationSubject::class)->findOneById($classification_id);
								$Subject->setNClassificationSubject($classification);
								$type = $em->getRepository(NTypesSubject::class)->findOneById($type_id);
								$Subject->setNTypesSubject($type);
									$Subject->setUpdateTime($updateAt);
								$em->persist($Subject);
								$em->flush();
								$helpers->binnacleAction('Subject','actualización',$updateAt,'Modificando datos de asignatura.',$identity->id);
							break;
							case 'Lection':
								$code = (isset($form->code)) ? $form->code : null;
			 					$subject_id = (isset($form->subject)) ? $form->subject : null;
			 					$classroom_id = (isset($form->classroom)) ? $form->classroom : null;
			 					$facilitator_id = (isset($form->facilitator)) ? $form->facilitator : null;
								$limit = (isset($form->limit)) ? $form->limit : null;

								$Lection =  $em->getRepository(Lection::class)->findOneById($form->id);
								$Lection->setCode($code);
								$classroom = $em->getRepository(Classroom::class)->findOneById($classroom_id);
								$Lection->setClassroom($classroom);
								$facilitator = $em->getRepository(Facilitator::class)->findOneById($facilitator_id);
								$Lection->setFacilitator($facilitator);
								$subject = $em->getRepository(Subject::class)->findOneById($subject_id);
								$Lection->setSubject($subject);
								$Lection->setLimix($limit);
								$Lection->setUpdateTime($updateAt);
								$em->persist($Lection);
								$em->flush();
								$helpers->binnacleAction('Lection','actualización',$updateAt,'Modificando datos de clase. id='.$form->id.'',$identity->id);
							break;
						}
	 				$response = array(
						'status' => 'success',
						'code' => 200,
						'msg' => 'Registro actualizado.'
		 			);
				}
	 		}
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}
		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/delete/data", name="studycontrol_delete_data", methods={"POST"})
	 */
	public function DataDelete(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$json = $request->request->get('form');
			$table_find = $request->request->get('table');
			$form = json_decode($json);
			$identity = $jwtauth->checkToken($token, true);
			switch ($table_find) {
				case 'Subject':
					$Datas =  $em->getRepository(Subject::class)->findOneById($form->id);
					$helpers->binnacleAction('Subject','elimino',$createdAt,'Se elimino la asignatura. ',$identity->id);	
				break;
				case 'Lection':
					$dayshas = $em->getRepository(NDaysHasClass::class)->findBy(array('class' => $form->id));
					foreach ($dayshas as $key => $value) {
						$em->remove($dayshas[$key]);
						$em->flush();
					}
					$Datas =  $em->getRepository(Lection::class)->findOneById($form->id);
					$helpers->binnacleAction('Lection','elimino',$createdAt,'Se elimino la clase. ',$identity->id);	
				break;
			}
			$em->remove($Datas);
			$em->flush();
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => 'Registro eliminado.',
			);
			
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/lection/new", name="studycontrol_lection_new", methods={"POST"})
	 */
	public function LectionRegistry(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$json = $request->request->get('form');
			$form = json_decode($json);

			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'El formulario no puede estar vació.',
	 		);

	 		if ($form != null) {
	 			$createdAt = new \Datetime('now');
	 			$identity = $jwtauth->checkToken($token, true);

	 			$code = (isset($form->code)) ? $form->code : null;
	 			$facilitator_id = (isset($form->facilitator)) ? $form->facilitator : null;
	 			$subject_id = (isset($form->subject)) ? $form->subject : null;
	 			$classroom_id = (isset($form->classroom)) ? $form->classroom : null;
	 			$limit = (isset($form->limit)) ? $form->limit : null;

				if ($code != null) {
					$em = $this->getDoctrine()->getManager();
					$isset_data = $em->getRepository(Lection::class)->findBy(array('code' => $code));
					if (count($isset_data) == 0) {
						$Lection = new Lection();
						$Lection->setCode($code);
						$clasroom = $em->getRepository(Classroom::class)->findOneById($classroom_id);
						$Lection->setClassroom($clasroom);
						$facilitator = $em->getRepository(Facilitator::class)->findOneById($facilitator_id);
						$Lection->setFacilitator($facilitator);
						$subject = $em->getRepository(Subject::class)->findOneById($subject_id);
						$Lection->setSubject($subject);
						$Lection->setLimix($limit);
						$Lection->setCreateTime($createdAt);
						$user = $em->getRepository(User::class)->findOneById($identity->id);
						$Lection->setUser($user);
						$em->persist($Lection);
		    			$em->flush();
		    			$helpers->binnacleAction('Lection','registro',$createdAt,'Registrando clase '.$code.'.',$identity->id);
						$response = array(
							'status' => 'success',
							'code' => 200,
							'msg' => 'Registro creado exitosamente.',
			 			);
					} else {
						$response = array(
							'status' => 'error',
							'code' => 400,
							'msg' => 'El registro ya se encuentra en base de datos.',
	 					);
					}
				}
	 		
	 		}
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}
		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/hasclass/new", name="studycontrol_hasclass_new", methods={"POST"})
	 */
	public function hasclassRegistry(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$json = $request->request->get('form');
			$form = json_decode($json);

			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'El formulario no puede estar vació.',
	 		);

	 		if ($form != null) {
	 			$createdAt = new \Datetime('now');
	 			$identity = $jwtauth->checkToken($token, true);

	 			$id_day = (isset($form->id_day)) ? $form->id_day : null;
	 			$id_class = (isset($form->id_class)) ? $form->id_class : null;
	 			$class_time = (isset($form->class_time)) ? $form->class_time : null;

				if ($id_class != null) {
					$em = $this->getDoctrine()->getManager();
					$isset_data = $em->getRepository(NDaysHasClass::class)->findBy(array('class' => $id_class,'nDays' => $id_day));
					if (count($isset_data) == 0) {
						$lection = $em->getRepository(Lection::class)->findOneById($id_class);
						$day = $em->getRepository(NDays::class)->findOneById($id_day);
						$NDaysHasClass = new NDaysHasClass();
						$NDaysHasClass->setNDays($day);
						$NDaysHasClass->setClass($lection);
						$NDaysHasClass->setClassTime($class_time);
						$NDaysHasClass->setCreateTime($createdAt);
						$user = $em->getRepository(User::class)->findOneById($identity->id);
						$NDaysHasClass->setUser($user);
						$em->persist($NDaysHasClass);
		    			$em->flush();
		    			$helpers->binnacleAction('NDaysHasClass','registro',$createdAt,'Registrando horario de la clase id='.$id_class.'.',$identity->id);
						$response = array(
							'status' => 'success',
							'code' => 200,
							'msg' => 'Horario agregado exitosamente.',
			 			);
					} else {
						$response = array(
							'status' => 'error',
							'code' => 400,
							'msg' => 'El dia ya tiene horario',
	 					);
					}
				}
	 		
	 		}
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}
		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/data/daysclass", name="studycontrol_view_daysclass", methods={"POST"})
	 */
	public function ViewDaysClassDataAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$id = $request->request->get('id');
			$dayshasclass =  $em->getRepository(NDaysHasClass::class)->findBy(array('class' => $id));
			foreach ($dayshasclass as $key => $value) {
				$data[] = [
					'id' => $dayshasclass[$key]->getNDays()->getId(),
					'day' => $dayshasclass[$key]->getNDays()->getDay(),
					'hours' => $dayshasclass[$key]->getHours(),
					'classtime' => $dayshasclass[$key]->getClassTime(),
				];
			}
			$helpers->binnacleAction('DaysClass','consulta',$createdAt,'Consultando lista de dias de clase.',$identity->id);
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/delete/schedule", name="studycontrol_delete_schedule_class", methods={"POST"})
	 */
	public function DeleteScheduleClass(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$id_day = $request->request->get('id_day');
			$id_class = $request->request->get('id_class');
			$identity = $jwtauth->checkToken($token, true);
			$schedule =  $em->getRepository(NDaysHasClass::class)->findOneBy(array('class' => $id_class,'nDays' => $id_day));
			$helpers->binnacleAction('NDaysHasClass','elimino',$createdAt,'Se elimino horario de la clase id='.$id_class.'. ',$identity->id);	
			$em->remove($schedule);
			$em->flush();
			$response = array(
				'status' => 'success',
				'code' => 200,
				'msg' => 'Horario eliminado.',
			);
			
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/studycontrol/data/inscription_students", name="studycontrol_view_inscription_students", methods={"POST"})
	 */
	public function ViewInscriptionStudentsDataAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$id = $request->request->get('id');
			$students =  $em->getRepository(Inscription::class)->findBy(array('class' => $id));
				foreach ($students as $key => $value) {
					$data[] = [
						'id' => $students[$key]->getStudent()->getId(),
						'name' => $students[$key]->getStudent()->getName().' '.$students[$key]->getStudent()->getSurname(),
						'identification' => $students[$key]->getStudent()->getIdentification(),
					];
				}
			$helpers->binnacleAction('Inscription','consulta',$createdAt,'Consultando lista de alumnos inscritos.',$identity->id);
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}
			
}


