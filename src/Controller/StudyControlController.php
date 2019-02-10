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
	 * @Route("/studycontrol/subjects", name="studycontrol_view_subject", methods={"POST"})
	 */
	public function subjectsAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
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
					if ($name != null) {
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
			
}


