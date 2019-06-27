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
use App\Entity\NRequirementsStudent;
use App\Entity\InscriptionHasNRequirementsStudent;
use App\Entity\Qualification;


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
				case 'requirements':
					$records =  $em->getRepository(NRequirementsStudent::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getName(),
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
	 * @Route("/studycontrol/get/notauth/selects", name="studycontrol_view_notauth", methods={"POST"})
	 */
	public function getNotAuthSelects(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$createdAt = new \Datetime('now');
		$table = $request->request->get('table');

		$data = array();
			$em = $this->getDoctrine()->getManager();
			switch ($table) {
				case 'cohorts':
					$records =  $em->getRepository(Cohort::class)->findAll();
					foreach ($records as $key => $value) {
						$data[] = [
							'value' => $records[$key]->getId(),
							'text' => $records[$key]->getCode(),
							'year' => $records[$key]->getYear(),
						];
					}
				break;
			}

			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);

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

				if ($name != null) {
					$em = $this->getDoctrine()->getManager();
					$isset_data = $em->getRepository(Subject::class)->findBy(array('name' => $name));
					if (count($isset_data) == 0) {
						$Subject = new Subject();
						$Subject->setName($name);
						$Subject->setDescription($description);
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
							'role' => $identity->rol,
							'type' => $subject[$key]->getNTypesSubject()->getName(),
						];
					}
					$helpers->binnacleAction('Subject','consulta',$createdAt,'Consultando lista de asignaturas.',$identity->id);
				break;
				case 'Lection':
					if ($identity->rol == 'ROLE_USER_F') {
						$user = $em->getRepository(User::class)->findOneById($identity->id);
						$lection =  $em->getRepository(Lection::class)->findBy(array('facilitator' => $user->getFacilitator()));
					} else {
						$lection =  $em->getRepository(Lection::class)->findAll();
					}
					foreach ($lection as $key => $value) {
						$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('aproved' => true));
						//$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('class'=>$lection[$key]->getId(),'aproved' => true));
						$data[] = [
							'id' => $lection[$key]->getId(),
							'code' => $lection[$key]->getCode(),
							'subject' => $lection[$key]->getSubject()->getName(),
							'classroom' => $lection[$key]->getClassroom()->getName(),
							//'limit' => $lection[$key]->getLimix(),
							'inscriptions' => count($inscriptions),
							'facilitator' => $lection[$key]->getFacilitator()->getName().' '.$lection[$key]->getFacilitator()->getSurname(),
						];
					}
					$helpers->binnacleAction('Lection','consulta',$createdAt,'Consultando lista de clases.',$identity->id);
				break;
				case 'Cohort':
					$cohorts =  $em->getRepository(cohort::class)->findAll();
					foreach ($cohorts as $key => $value) {
						$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('cohort' => $cohorts[$key]->getId(),'aproved' => true));
						//$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('class'=>$cohorts[$key]->getId(),'aproved' => true));
						$data[] = [
							'id' => $cohorts[$key]->getId(),
							'code' => $cohorts[$key]->getCode(),
							'year' => $cohorts[$key]->getYear(),
							'limit' => $cohorts[$key]->getLimix(),
							'initial' => $cohorts[$key]->getInitialDate(),
							'final' => $cohorts[$key]->getFinalDate(),
							//'limit' => $cohort[$key]->getLimix(),
							'inscriptions' => count($inscriptions),
						];
					}
					$helpers->binnacleAction('Cohort','consulta',$createdAt,'Consultando lista de clases.',$identity->id);
				break;
				case 'Cohort-Student':
					$user = $em->getRepository(User::class)->findOneById($identity->id);
					$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('student' => $user->getStudent()));
					foreach ($inscriptions as $key => $value) {
						$data[] = [
							'id' => $inscriptions[$key]->getId(),
							'code' => $inscriptions[$key]->getCohort()->getCode(),
							'year' => $inscriptions[$key]->getCohort()->getYear(),
							'initial' => $inscriptions[$key]->getCohort()->getInitialDate(),
							'final' => $inscriptions[$key]->getCohort()->getFinalDate(),
							'aproved' => $inscriptions[$key]->getAproved(),
						];
					}
					$helpers->binnacleAction('Cohort','consulta',$createdAt,'Consultando lista de cursos del estudiantes.',$identity->id);
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
					$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('cohort' => $Lection->getCohort()->getId(), 'aproved' => true));
					$_inscriptions = array();
					foreach ($inscriptions as $key => $value) {
						$_inscriptions[] = [
							'name' => $inscriptions[$key]->getStudent()->getName(),
							'surname' => $inscriptions[$key]->getStudent()->getSurname(),
							'identification' => $inscriptions[$key]->getStudent()->getIdentification(),
						];
					}
					$data = [
						'id' => $Lection->getId(),
						'code' => $Lection->getCode(),
						'subject' => array(
							'name' => $Lection->getSubject()->getName(),
							'id' => strval($Lection->getSubject()->getId())
						),
						'cohort' => array(
							'code' => $Lection->getCohort()->getCode(),
							'id' => strval($Lection->getCohort()->getId())
						),
						'classroom' => array(
							'id' => $Lection->getClassroom()->getId(),
							'name' => $Lection->getClassroom()->getName()),
						'facilitator' => array(
							'id' => $Lection->getFacilitator()->getId(),
							'name' => $Lection->getFacilitator()->getName().' '.$Lection->getFacilitator()->getSurname()),
						'inscriptions' => $_inscriptions,
						'days' => $days,
					];
					$helpers->binnacleAction('Lection','consulta',$createdAt,'Consultando datos de clase',$identity->id);
				break;
				case 'Lection-Facilitator':
					$user =  $em->getRepository(User::class)->findOneById($id_data);
					$Lections =  $em->getRepository(Lection::class)->findBy(array('facilitator'=>$user->getFacilitator()->getId()));
					$data = array();
					foreach ($Lections as $key => $value) {
						$data[] = [
							'code' => $Lections[$key]->getCode(),
							'subject' => $Lections[$key]->getSubject()->getName(),
							'cohort' => $Lections[$key]->getCohort()->getCode(),
						];
					}
					$helpers->binnacleAction('Lection','consulta',$createdAt,'Consultando asignaturas del facilitador id='.$user->getId().'',$identity->id);
				break;
				case 'Cohort-Student':
					$user =  $em->getRepository(User::class)->findOneById($id_data);
					$Inscription =  $em->getRepository(Inscription::class)->findBy(array('student'=>$user->getStudent()->getId()));
					$data = array();
					foreach ($Inscription as $key => $value) {
						$data[] = [
							'cohort' => $Inscription[$key]->getCohort()->getCode(),
							'year' => $Inscription[$key]->getCohort()->getYear(),
						];
					}
					$helpers->binnacleAction('Lection','consulta',$createdAt,'Consultando inscripciones del estudiante id='.$user->getId().'',$identity->id);
				break;
				case 'Cohort':
					$Cohort =  $em->getRepository(Cohort::class)->findOneById($id_data);
					$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('cohort' => $Cohort->getId(),'aproved' => true));
					$data = [
						'id' => $Cohort->getId(),
						'code' => $Cohort->getCode(),
						'year' => $Cohort->getYear(),
						'limit' => $Cohort->getLimix(),
						'initial' => $Cohort->getInitialDate(),
						'final' => $Cohort->getFinalDate(),
						'active' => $Cohort->getActive(),
						'inscriptions' => count($inscriptions),
					];
					$helpers->binnacleAction('Cohort','consulta',$createdAt,'Consultando datos del curso',$identity->id);
				break;
				case 'Inscription':
					$Inscription =  $em->getRepository(Inscription::class)->findOneById($id_data);
					$_lection =  $em->getRepository(Lection::class)->findBy(array('cohort' => $Inscription->getCohort()->getId()));
					$lections = array();
					foreach ($_lection as $key => $value) {
						$qualification =  $em->getRepository(Qualification::class)->findOneBy(array('inscription' => $Inscription->getId(),'lection' => $_lection[$key]->getId()));
						$days_has =  $em->getRepository(NDaysHasClass::class)->findBy(array('class' => $_lection[$key]->getId()));
						$hasc = array();
						$qualification = ($qualification) ? $qualification->getQualification() : 'N/A';
						foreach ($days_has as $key => $value) {
							$hasc[] = [
								'day' => $days_has[$key]->getNDays()->getDay(),
								'hours' => $days_has[$key]->getHours(),
								'classTime' => $days_has[$key]->getClassTime(),
							];
						}
						$lections[] = [
							'id' => $_lection[$key]->getId(),
							'name' => $_lection[$key]->getSubject()->getName(),
							'description' => $_lection[$key]->getSubject()->getDescription(),
							'nTypesSubject' => $_lection[$key]->getSubject()->getNClassificationSubject()->getName(),
							'nClassificationSubject' => $_lection[$key]->getSubject()->getNTypesSubject()->getName(),
							'qualification' => $qualification,
							'hassday' => $hasc,
						];
					}
					$data = [
						'id' => $Inscription->getId(),
						'cohort' => array(
							'code'=> $Inscription->getCohort()->getCode(),
							'dateinitial'=> $Inscription->getCohort()->getInitialDate(),
							'datefinal'=> $Inscription->getCohort()->getFinalDate(),
							'year'=> $Inscription->getCohort()->getYear(),
						),
						'student_id' => $Inscription->getStudent()->getId(),
						'aproved' => $Inscription->getAproved(),
						'subjects' => $lections,
					];
					$helpers->binnacleAction('Inscription','consulta',$createdAt,'Consultando datos del curso como estudiante',$identity->id);
				break;
				case 'Student':
					$Student =  $em->getRepository(Student::class)->findOneById($id_data);
					$data = [
						'id' => $Student->getId(),
						'name' => $Student->getName(),
						'name2' => $Student->getName2(),
						'surname' => $Student->getSurname(),
						'surname2' => $Student->getSurname2(),
						'identification' => $Student->getIdentification(),
					];
					$helpers->binnacleAction('Student','consulta',$createdAt,'Consultando datos del estudiante id='.$id_data.'',$identity->id);
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

								$Subject =  $em->getRepository(Subject::class)->findOneById($form->id);
								$Subject->setName($name);
								$Subject->setDescription($description);
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
								$cohort_id = (isset($form->cohort)) ? $form->cohort : null;

								$Lection =  $em->getRepository(Lection::class)->findOneById($form->id);
								$classroom = $em->getRepository(Classroom::class)->findOneById($classroom_id);
								$facilitator = $em->getRepository(Facilitator::class)->findOneById($facilitator_id);
								$subject = $em->getRepository(Subject::class)->findOneById($subject_id);
								$cohort = $em->getRepository(Cohort::class)->findOneById($cohort_id);
								$Lection->setCode($code);
								$Lection->setClassroom($classroom);
								$Lection->setFacilitator($facilitator);
								$Lection->setSubject($subject);
								$Lection->setCohort($cohort);
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
				'msg' => 'Registro eliminado.',
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
	 			$cohort_id = (isset($form->cohort)) ? $form->cohort : null;

				if ($code != null) {
					$em = $this->getDoctrine()->getManager();
					$isset_data = $em->getRepository(Lection::class)->findBy(array('code' => $code));
					if (count($isset_data) == 0) {
						$Lection = new Lection();
						$clasroom = $em->getRepository(Classroom::class)->findOneById($classroom_id);
						$facilitator = $em->getRepository(Facilitator::class)->findOneById($facilitator_id);
						$subject = $em->getRepository(Subject::class)->findOneById($subject_id);
						$user = $em->getRepository(User::class)->findOneById($identity->id);
						$cohort = $em->getRepository(Cohort::class)->findOneById($cohort_id);
						$Lection->setCode($code);
						$Lection->setClassroom($clasroom);
						$Lection->setFacilitator($facilitator);
						$Lection->setSubject($subject);
						$Lection->setCohort($cohort);
						$Lection->setCreateTime($createdAt);
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
	 * @Route("/studycontrol/qualitification/new", name="studycontrol_qualitification_new", methods={"POST"})
	 */
	public function QualitificationRegistry(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$id_inscription = $request->request->get('id_inscription');
			$id_lection = $request->request->get('id_lection');
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

				 $qualification = (isset($form->qualification)) ? $form->qualification : null;

				if ($id_inscription != null) {
					$em = $this->getDoctrine()->getManager();
					$isset_data = $em->getRepository(Qualification::class)->findOneBy(array('inscription' => $id_inscription,'lection' => $id_lection));
					$Inscription = $em->getRepository(Inscription::class)->findOneById($id_inscription);
					$Lection = $em->getRepository(Lection::class)->findOneById($id_lection);
					$user = $em->getRepository(User::class)->findOneById($identity->id);
					if (!$isset_data) {
						$Qualification = new Qualification();
						$Qualification->setQualification($qualification);
						$Qualification->setInscription($Inscription);
						$Qualification->setLection($Lection);
						$Qualification->setCreateTime($createdAt);
						$Qualification->setUser($user);
						$em->persist($Qualification);
		    			$em->flush();
		    			$helpers->binnacleAction('Qualification','registro',$createdAt,'Agregando calificación a id='.$id_inscription.'.',$identity->id);
						$msg = 'Calificación agregada con exito.';
					} else {
						$isset_data->setQualification($qualification);
						$isset_data->setInscription($Inscription);
						$isset_data->setLection($Lection);
						$isset_data->setCreateTime($createdAt);
						$isset_data->setUser($user);
						$em->persist($isset_data);
		    			$em->flush();
						$helpers->binnacleAction('Qualification','update',$createdAt,'Cambiando calificación a id='.$id_inscription.'.',$identity->id);
						$msg = 'Calificación cambiada con exito.';
					}
					$response = array(
						'status' => 'success',
						'code' => 200,
						'msg' => $msg,
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
			$students =  $em->getRepository(Inscription::class)->findBy(array('cohort' => $id));
				foreach ($students as $key => $value) {
					$qualification =  $em->getRepository(Qualification::class)->findOneBy(array('inscription' => $students[$key]->getId()));
					if ($qualification) {
						$qualification = $qualification->getQualification();
					} else {
						$qualification = 'N/A';
					}
					$data[] = [
						'id' => $students[$key]->getId(),
						'name' => $students[$key]->getStudent()->getName().' '.$students[$key]->getStudent()->getSurname(),
						'identification' => $students[$key]->getStudent()->getIdentification(),
						'aproved' => $students[$key]->getAproved(),
						'qualification' => $qualification,
					];
				}
			$helpers->binnacleAction('Inscription','consulta',$createdAt,'Consultando lista de alumnos pre-inscritos.',$identity->id);
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
	 * @Route("/studycontrol/data/search_student", name="studycontrol_view_search_student", methods={"POST"})
	 */
	public function SearchStudentInscription(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$cedula = $request->request->get('cedula');
			$students =  $em->getRepository(Student::class)->findOneBy(array('identification' => $cedula));
			if ($students) {
				$data = [
					'id' => $students->getId(),
					'name' => $students->getName().' '.$students->getSurname(),
					'identification' => $students->getIdentification(),
				];
			} else {
				$data = null;
			}
		
			$helpers->binnacleAction('Student','consulta',$createdAt,'Buscando estudiante - Inscription.',$identity->id);
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
	 * @Route("/studycontrol/inscription/student", name="studycontrol_inscription_student", methods={"POST"})
	 */
	public function inscriptionStudent(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$id_student = $request->request->get('id_student');
			$id_class = $request->request->get('id_class');

			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'El formulario no puede estar vació.',
	 		);

	 		if ($id_student != null) {
	 			$createdAt = new \Datetime('now');
	 			$identity = $jwtauth->checkToken($token, true);

				$em = $this->getDoctrine()->getManager();
				$isset_data = $em->getRepository(Inscription::class)->findBy(array('class' => $id_class,'student' => $id_student));
				if (count($isset_data) == 0) {
					$lection = $em->getRepository(Lection::class)->findOneById($id_class);
					$student = $em->getRepository(Student::class)->findOneById($id_student);
					$Inscription = new Inscription();
					$Inscription->setClass($lection);
					$Inscription->setStudent($student);
					$Inscription->setCreateTime($createdAt);
					$user = $em->getRepository(User::class)->findOneById($identity->id);
					$Inscription->setUser($user);
					$em->persist($Inscription);
	    			$em->flush();
	    			$helpers->binnacleAction('Inscription','registro',$createdAt,'Inscribiendo alumno id='.$id_student.' en la clase '.$id_class.'.',$identity->id);
					$response = array(
						'status' => 'success',
						'code' => 200,
						'msg' => 'Estudiante inscrito exitosamente.',
		 			);
				} else {
					$response = array(
						'status' => 'error',
						'code' => 400,
						'msg' => 'El estudiante esta inscrito en esta clase.',
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
	 * @Route("/studycontrol/unsubscribe/student", name="studycontrol_unsubscribe_student", methods={"POST"})
	 */
	public function UnsubscribeStudent(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$id_inscription = $request->request->get('id_inscription');
			$identity = $jwtauth->checkToken($token, true);
			$inscription =  $em->getRepository(Inscription::class)->findOneById($id_inscription);
			$helpers->binnacleAction('Inscription','elimino',$createdAt,'Se retiro el estudiante id='.$id_inscription,$identity->id);
			$em->remove($inscription);
			$em->flush();
			$response = array(
				'status' => 'success',
				'code' => 200,
				'msg' => 'Estudiante retirado.',
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
	 * @Route("/studycontrol/aproved/inscription", name="studycontrol_aproved_inscription", methods={"POST"})
	 */
	public function AprovedInscription(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$id_inscription = $request->request->get('id_inscription');
			$id_cohort = $request->request->get('id_cohort');
			$selected = json_decode($request->request->get('selected'));
			$inscriptions =  $em->getRepository(Inscription::class)->findBy(array('cohort' => $id_cohort,'aproved' => true));
			$cohort =  $em->getRepository(Cohort::class)->findOneById($id_cohort);
			$identity = $jwtauth->checkToken($token, true);
			$inscription =  $em->getRepository(Inscription::class)->findOneBy(array('cohort' => $id_cohort,'id' => $id_inscription));
			$aproved = $inscription->getAproved();
				if ($aproved != 'false') {
					$aprov = 1;
					if (count($inscriptions) >= $cohort->getLimix()) {
						$msg = 'Limite de inscripciones alcanzado';
					} else {
						$inscription->setAproved(1);
						foreach ($selected as $key => $val) {
							$InscriptionHasNRequirementsStudent = new InscriptionHasNRequirementsStudent();
							$InscriptionHasNRequirementsStudent->setInscription($inscription);
							$requirement =  $em->getRepository(NRequirementsStudent::class)->findOneById($selected[$key]->value);
							$InscriptionHasNRequirementsStudent->setNRequirementsStudent($requirement);
							$user = $em->getRepository(User::class)->findOneById($identity->id);
							$InscriptionHasNRequirementsStudent->setUser($user);
							$InscriptionHasNRequirementsStudent->setCreateTime($createdAt);
							$em->persist($InscriptionHasNRequirementsStudent);
							$em->flush();
						}
						$msg = 'Inscripción aprobada';
					}
				} else {
					$inscription->setAproved(0);
					$requirements =  $em->getRepository(InscriptionHasNRequirementsStudent::class)->findBy(array('inscription' => $id_inscription));
					foreach ($requirements as $key => $val) {
						$em->remove($requirements[$key]);
						$em->flush();
					}
					$aprov = 0;
					$msg = 'Inscripción desaprobada';
				}
				$helpers->binnacleAction('Inscription','aprobar',$createdAt,$msg.' id='.$id_inscription.'',$identity->id);
				$em->persist($inscription);
				$em->flush();
				$response = array(
					'status' => 'success',
					'code' => 200,
					'msg' => $msg,
					'aproved' => $aprov,
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
	 * @Route("/studycontrol/get/lections", name="studycontrol_get_lections", methods={"POST"})
	 */
	public function GetLections(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$id_cohort = $request->request->get('id_cohort');
			$lection =  $em->getRepository(Lection::class)->findBy(array('cohort' => $id_cohort));
			$identity = $jwtauth->checkToken($token, true);
			$data = array();
			foreach ($lection as $key => $value) {
				$data[] = [
					'id' => $lection[$key]->getSubject()->getId(),
					'name' => $lection[$key]->getSubject()->getName(),
					'description' => $lection[$key]->getSubject()->getDescription(),
					'classification' => $lection[$key]->getSubject()->getNClassificationSubject()->getName(),
					'type' => $lection[$key]->getSubject()->getNTypesSubject()->getName(),
				];
			}
			$helpers->binnacleAction('Lection','consulta',$createdAt,'consulta de materias de la cohorte id='.$id_cohort.'',$identity->id);
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
	 * @Route("/studycontrol/get/finalqualifications", name="studycontrol_get_finalqualifications", methods={"POST"})
	 */
	public function Getfinalqualifications(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$id_student = $request->request->get('id_student');
			$inscription =  $em->getRepository(Inscription::class)->findOneBy(array('student' => $id_student));
			$identity = $jwtauth->checkToken($token, true);
			$data = array();
			$sum = 0;
			if ($inscription) {
				$qualifications =  $em->getRepository(Qualification::class)->findBy(array('inscription' => $inscription->getId()));
				$lections = count($qualifications);
				foreach ($qualifications as $key => $value) {
					$sum = $sum + $qualifications[$key]->getQualification();
				}
				$final = $sum / $lections;
			}
			$helpers->binnacleAction('Qualification','consulta',$createdAt,'obteniendo nota final del estudiante id='.$id_student.'',$identity->id);
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $final,
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

