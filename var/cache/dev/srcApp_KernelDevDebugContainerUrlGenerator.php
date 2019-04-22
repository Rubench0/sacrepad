<?php

use Symfony\Component\Routing\RequestContext;
use Symfony\Component\Routing\Exception\RouteNotFoundException;
use Psr\Log\LoggerInterface;

/**
 * This class has been auto-generated
 * by the Symfony Routing Component.
 */
class srcApp_KernelDevDebugContainerUrlGenerator extends Symfony\Component\Routing\Generator\UrlGenerator
{
    private static $declaredRoutes;
    private $defaultLocale;

    public function __construct(RequestContext $context, LoggerInterface $logger = null, string $defaultLocale = null)
    {
        $this->context = $context;
        $this->logger = $logger;
        $this->defaultLocale = $defaultLocale;
        if (null === self::$declaredRoutes) {
            self::$declaredRoutes = array(
        'configuration_days_new' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::DaysRegistry'), array(), array(array('text', '/configuration/days/new')), array(), array()),
        'configuration_view_days' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::DaysView'), array(), array(array('text', '/configuration/days')), array(), array()),
        'configuration_get_data' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::DataGet'), array(), array(array('text', '/configuration/get/data')), array(), array()),
        'configuration_edit_data' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::DataEdit'), array(), array(array('text', '/configuration/edit/data')), array(), array()),
        'configuration_delete_data' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::DataDelete'), array(), array(array('text', '/configuration/delete/data')), array(), array()),
        'configuration_nclasssubject_new' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::ClassSubjectRegistry'), array(), array(array('text', '/configuration/nclasssubject/new')), array(), array()),
        'configuration_view_nclasssubject' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::ClassSubjectView'), array(), array(array('text', '/configuration/nclasssubject')), array(), array()),
        'configuration_typesubject_new' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::TypeSubjectRegistry'), array(), array(array('text', '/configuration/typesubject/new')), array(), array()),
        'configuration_view_typesubject' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::TypeSubjectView'), array(), array(array('text', '/configuration/typesubject')), array(), array()),
        'configuration_requirementstudent_new' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::RequirementStudentRegistry'), array(), array(array('text', '/configuration/requirementstudent/new')), array(), array()),
        'configuration_view_requirementstudent' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::RequirementStudentView'), array(), array(array('text', '/configuration/requirementstudents')), array(), array()),
        'configuration_cohort_new' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::CohortRegistry'), array(), array(array('text', '/configuration/cohort/new')), array(), array()),
        'configuration_view_cohort' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::CohortView'), array(), array(array('text', '/configuration/cohort')), array(), array()),
        'configuration_cohort_get' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::CohortGet'), array(), array(array('text', '/configuration/cohort/get')), array(), array()),
        'configuration_edit_cohort' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::CohortEdit'), array(), array(array('text', '/configuration/edit/cohort')), array(), array()),
        'configuration_delete_cohort' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::CohortDelete'), array(), array(array('text', '/configuration/delete/cohort')), array(), array()),
        'configuration_classroom_new' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::ClassRoomRegistry'), array(), array(array('text', '/configuration/classroom/new')), array(), array()),
        'configuration_view_classroom' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::ClassRoomView'), array(), array(array('text', '/configuration/classroom')), array(), array()),
        'configuration_edit_classroom' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::ClassRoomEdit'), array(), array(array('text', '/configuration/edit/classroom')), array(), array()),
        'configuration_classroom_get' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::ClassRoomGet'), array(), array(array('text', '/configuration/classroom/get')), array(), array()),
        'configuration_delete_classroom' => array(array(), array('_controller' => 'App\\Controller\\ConfigurationController::ClassRoomDelete'), array(), array(array('text', '/configuration/delete/classroom')), array(), array()),
        'main' => array(array(), array('_controller' => 'App\\Controller\\MainController::index'), array(), array(array('text', '/main')), array(), array()),
        'login' => array(array(), array('_controller' => 'App\\Controller\\SecurityController::login'), array(), array(array('text', '/login')), array(), array()),
        'security_binnacle_actions' => array(array(), array('_controller' => 'App\\Controller\\SecurityController::binnacleActions'), array(), array(array('text', '/security/binnacle/actions')), array(), array()),
        'security_binnacle_access' => array(array(), array('_controller' => 'App\\Controller\\SecurityController::binnacleAccess'), array(), array(array('text', '/security/binnacle/access')), array(), array()),
        'studycontrol_view_facilitators' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::facilitatorsAll'), array(), array(array('text', '/studycontrol/facilitators')), array(), array()),
        'studycontrol_view_students' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::studentsAll'), array(), array(array('text', '/studycontrol/students')), array(), array()),
        'studycontrol_view_nclasssubjects' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::getSelects'), array(), array(array('text', '/studycontrol/get/selects')), array(), array()),
        'studycontrol_subject_new' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::SubjectRegistry'), array(), array(array('text', '/studycontrol/subject/new')), array(), array()),
        'studycontrol_view_subject' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::ViewDataAll'), array(), array(array('text', '/studycontrol/data/tables')), array(), array()),
        'studycontrol_get_data' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::DataGet'), array(), array(array('text', '/studycontrol/get/data')), array(), array()),
        'studycontrol_edit_data' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::DataEdit'), array(), array(array('text', '/studycontrol/edit/data')), array(), array()),
        'studycontrol_delete_data' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::DataDelete'), array(), array(array('text', '/studycontrol/delete/data')), array(), array()),
        'studycontrol_lection_new' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::LectionRegistry'), array(), array(array('text', '/studycontrol/lection/new')), array(), array()),
        'studycontrol_hasclass_new' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::hasclassRegistry'), array(), array(array('text', '/studycontrol/hasclass/new')), array(), array()),
        'studycontrol_view_daysclass' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::ViewDaysClassDataAll'), array(), array(array('text', '/studycontrol/data/daysclass')), array(), array()),
        'studycontrol_delete_schedule_class' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::DeleteScheduleClass'), array(), array(array('text', '/studycontrol/delete/schedule')), array(), array()),
        'studycontrol_view_inscription_students' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::ViewInscriptionStudentsDataAll'), array(), array(array('text', '/studycontrol/data/inscription_students')), array(), array()),
        'studycontrol_view_search_student' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::SearchStudentInscription'), array(), array(array('text', '/studycontrol/data/search_student')), array(), array()),
        'studycontrol_inscription_student' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::inscriptionStudent'), array(), array(array('text', '/studycontrol/inscription/student')), array(), array()),
        'studycontrol_unsubscribe_student' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::UnsubscribeStudent'), array(), array(array('text', '/studycontrol/unsubscribe/student')), array(), array()),
        'studycontrol_aproved_inscription' => array(array(), array('_controller' => 'App\\Controller\\StudyControlController::AprovedInscription'), array(), array(array('text', '/studycontrol/aproved/inscription')), array(), array()),
        'user_new' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserRegistry'), array(), array(array('text', '/user/new')), array(), array()),
        'user_inscription_new' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserInscriptionRegistry'), array(), array(array('text', '/user/inscription/new')), array(), array()),
        'user_profile_edit' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserProfileUpdate'), array(), array(array('text', '/user/profile/edit')), array(), array()),
        'user_all' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserAll'), array(), array(array('text', '/user/all')), array(), array()),
        'user_get' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserGet'), array(), array(array('text', '/user/get')), array(), array()),
        'user_changepassword' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserChangePassword'), array(), array(array('text', '/user/changepassword')), array(), array()),
        'user_edit' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserEdit'), array(), array(array('text', '/user/edit')), array(), array()),
        'user_delete' => array(array(), array('_controller' => 'App\\Controller\\UsersController::UserDelete'), array(), array(array('text', '/user/delete')), array(), array()),
        '_twig_error_test' => array(array('code', '_format'), array('_controller' => 'twig.controller.preview_error::previewErrorPageAction', '_format' => 'html'), array('code' => '\\d+'), array(array('variable', '.', '[^/]++', '_format', true), array('variable', '/', '\\d+', 'code', true), array('text', '/_error')), array(), array()),
        '_wdt' => array(array('token'), array('_controller' => 'web_profiler.controller.profiler::toolbarAction'), array(), array(array('variable', '/', '[^/]++', 'token', true), array('text', '/_wdt')), array(), array()),
        '_profiler_home' => array(array(), array('_controller' => 'web_profiler.controller.profiler::homeAction'), array(), array(array('text', '/_profiler/')), array(), array()),
        '_profiler_search' => array(array(), array('_controller' => 'web_profiler.controller.profiler::searchAction'), array(), array(array('text', '/_profiler/search')), array(), array()),
        '_profiler_search_bar' => array(array(), array('_controller' => 'web_profiler.controller.profiler::searchBarAction'), array(), array(array('text', '/_profiler/search_bar')), array(), array()),
        '_profiler_phpinfo' => array(array(), array('_controller' => 'web_profiler.controller.profiler::phpinfoAction'), array(), array(array('text', '/_profiler/phpinfo')), array(), array()),
        '_profiler_search_results' => array(array('token'), array('_controller' => 'web_profiler.controller.profiler::searchResultsAction'), array(), array(array('text', '/search/results'), array('variable', '/', '[^/]++', 'token', true), array('text', '/_profiler')), array(), array()),
        '_profiler_open_file' => array(array(), array('_controller' => 'web_profiler.controller.profiler::openAction'), array(), array(array('text', '/_profiler/open')), array(), array()),
        '_profiler' => array(array('token'), array('_controller' => 'web_profiler.controller.profiler::panelAction'), array(), array(array('variable', '/', '[^/]++', 'token', true), array('text', '/_profiler')), array(), array()),
        '_profiler_router' => array(array('token'), array('_controller' => 'web_profiler.controller.router::panelAction'), array(), array(array('text', '/router'), array('variable', '/', '[^/]++', 'token', true), array('text', '/_profiler')), array(), array()),
        '_profiler_exception' => array(array('token'), array('_controller' => 'web_profiler.controller.exception::showAction'), array(), array(array('text', '/exception'), array('variable', '/', '[^/]++', 'token', true), array('text', '/_profiler')), array(), array()),
        '_profiler_exception_css' => array(array('token'), array('_controller' => 'web_profiler.controller.exception::cssAction'), array(), array(array('text', '/exception.css'), array('variable', '/', '[^/]++', 'token', true), array('text', '/_profiler')), array(), array()),
    );
        }
    }

    public function generate($name, $parameters = array(), $referenceType = self::ABSOLUTE_PATH)
    {
        $locale = $parameters['_locale']
            ?? $this->context->getParameter('_locale')
            ?: $this->defaultLocale;

        if (null !== $locale && null !== $name) {
            do {
                if ((self::$declaredRoutes[$name.'.'.$locale][1]['_canonical_route'] ?? null) === $name) {
                    unset($parameters['_locale']);
                    $name .= '.'.$locale;
                    break;
                }
            } while (false !== $locale = strstr($locale, '_', true));
        }

        if (!isset(self::$declaredRoutes[$name])) {
            throw new RouteNotFoundException(sprintf('Unable to generate a URL for the named route "%s" as such route does not exist.', $name));
        }

        list($variables, $defaults, $requirements, $tokens, $hostTokens, $requiredSchemes) = self::$declaredRoutes[$name];

        return $this->doGenerate($variables, $defaults, $requirements, $tokens, $parameters, $name, $referenceType, $hostTokens, $requiredSchemes);
    }
}
