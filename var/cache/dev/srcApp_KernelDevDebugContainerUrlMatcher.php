<?php

use Symfony\Component\Routing\Matcher\Dumper\PhpMatcherTrait;
use Symfony\Component\Routing\RequestContext;

/**
 * This class has been auto-generated
 * by the Symfony Routing Component.
 */
class srcApp_KernelDevDebugContainerUrlMatcher extends Symfony\Bundle\FrameworkBundle\Routing\RedirectableUrlMatcher
{
    use PhpMatcherTrait;

    public function __construct(RequestContext $context)
    {
        $this->context = $context;
        $this->staticRoutes = array(
            '/configuration/days/new' => array(array(array('_route' => 'configuration_days_new', '_controller' => 'App\\Controller\\ConfigurationController::DaysRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/days' => array(array(array('_route' => 'configuration_view_days', '_controller' => 'App\\Controller\\ConfigurationController::DaysView'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/get/data' => array(array(array('_route' => 'configuration_get_data', '_controller' => 'App\\Controller\\ConfigurationController::DataGet'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/edit/data' => array(array(array('_route' => 'configuration_edit_data', '_controller' => 'App\\Controller\\ConfigurationController::DataEdit'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/delete/data' => array(array(array('_route' => 'configuration_delete_data', '_controller' => 'App\\Controller\\ConfigurationController::DataDelete'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/nclasssubject/new' => array(array(array('_route' => 'configuration_nclasssubject_new', '_controller' => 'App\\Controller\\ConfigurationController::ClassSubjectRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/nclasssubject' => array(array(array('_route' => 'configuration_view_nclasssubject', '_controller' => 'App\\Controller\\ConfigurationController::ClassSubjectView'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/typesubject/new' => array(array(array('_route' => 'configuration_typesubject_new', '_controller' => 'App\\Controller\\ConfigurationController::TypeSubjectRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/typesubject' => array(array(array('_route' => 'configuration_view_typesubject', '_controller' => 'App\\Controller\\ConfigurationController::TypeSubjectView'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/requirementstudent/new' => array(array(array('_route' => 'configuration_requirementstudent_new', '_controller' => 'App\\Controller\\ConfigurationController::RequirementStudentRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/requirementstudents' => array(array(array('_route' => 'configuration_view_requirementstudent', '_controller' => 'App\\Controller\\ConfigurationController::RequirementStudentView'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/cohort/new' => array(array(array('_route' => 'configuration_cohort_new', '_controller' => 'App\\Controller\\ConfigurationController::CohortRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/cohort' => array(array(array('_route' => 'configuration_view_cohort', '_controller' => 'App\\Controller\\ConfigurationController::CohortView'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/cohort/get' => array(array(array('_route' => 'configuration_cohort_get', '_controller' => 'App\\Controller\\ConfigurationController::CohortGet'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/edit/cohort' => array(array(array('_route' => 'configuration_edit_cohort', '_controller' => 'App\\Controller\\ConfigurationController::CohortEdit'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/delete/cohort' => array(array(array('_route' => 'configuration_delete_cohort', '_controller' => 'App\\Controller\\ConfigurationController::CohortDelete'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/classroom/new' => array(array(array('_route' => 'configuration_classroom_new', '_controller' => 'App\\Controller\\ConfigurationController::ClassRoomRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/classroom' => array(array(array('_route' => 'configuration_view_classroom', '_controller' => 'App\\Controller\\ConfigurationController::ClassRoomView'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/edit/classroom' => array(array(array('_route' => 'configuration_edit_classroom', '_controller' => 'App\\Controller\\ConfigurationController::ClassRoomEdit'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/classroom/get' => array(array(array('_route' => 'configuration_classroom_get', '_controller' => 'App\\Controller\\ConfigurationController::ClassRoomGet'), null, array('POST' => 0), null, false, false, null)),
            '/configuration/delete/classroom' => array(array(array('_route' => 'configuration_delete_classroom', '_controller' => 'App\\Controller\\ConfigurationController::ClassRoomDelete'), null, array('POST' => 0), null, false, false, null)),
            '/main' => array(array(array('_route' => 'main', '_controller' => 'App\\Controller\\MainController::index'), null, array('POST' => 0), null, false, false, null)),
            '/login' => array(array(array('_route' => 'login', '_controller' => 'App\\Controller\\SecurityController::login'), null, array('POST' => 0), null, false, false, null)),
            '/security/binnacle/actions' => array(array(array('_route' => 'security_binnacle_actions', '_controller' => 'App\\Controller\\SecurityController::binnacleActions'), null, array('POST' => 0), null, false, false, null)),
            '/security/binnacle/access' => array(array(array('_route' => 'security_binnacle_access', '_controller' => 'App\\Controller\\SecurityController::binnacleAccess'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/facilitators' => array(array(array('_route' => 'studycontrol_view_facilitators', '_controller' => 'App\\Controller\\StudyControlController::facilitatorsAll'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/students' => array(array(array('_route' => 'studycontrol_view_students', '_controller' => 'App\\Controller\\StudyControlController::studentsAll'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/get/selects' => array(array(array('_route' => 'studycontrol_view_nclasssubjects', '_controller' => 'App\\Controller\\StudyControlController::getSelects'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/subject/new' => array(array(array('_route' => 'studycontrol_subject_new', '_controller' => 'App\\Controller\\StudyControlController::SubjectRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/data/tables' => array(array(array('_route' => 'studycontrol_view_subject', '_controller' => 'App\\Controller\\StudyControlController::ViewDataAll'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/get/data' => array(array(array('_route' => 'studycontrol_get_data', '_controller' => 'App\\Controller\\StudyControlController::DataGet'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/edit/data' => array(array(array('_route' => 'studycontrol_edit_data', '_controller' => 'App\\Controller\\StudyControlController::DataEdit'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/delete/data' => array(array(array('_route' => 'studycontrol_delete_data', '_controller' => 'App\\Controller\\StudyControlController::DataDelete'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/lection/new' => array(array(array('_route' => 'studycontrol_lection_new', '_controller' => 'App\\Controller\\StudyControlController::LectionRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/hasclass/new' => array(array(array('_route' => 'studycontrol_hasclass_new', '_controller' => 'App\\Controller\\StudyControlController::hasclassRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/studycontrol/data/daysclass' => array(array(array('_route' => 'studycontrol_view_daysclass', '_controller' => 'App\\Controller\\StudyControlController::ViewDaysClassDataAll'), null, array('POST' => 0), null, false, false, null)),
            '/user/new' => array(array(array('_route' => 'user_new', '_controller' => 'App\\Controller\\UsersController::UserRegistry'), null, array('POST' => 0), null, false, false, null)),
            '/user/profile/edit' => array(array(array('_route' => 'user_profile_edit', '_controller' => 'App\\Controller\\UsersController::UserProfileUpdate'), null, array('POST' => 0), null, false, false, null)),
            '/user/all' => array(array(array('_route' => 'user_all', '_controller' => 'App\\Controller\\UsersController::UserAll'), null, array('POST' => 0), null, false, false, null)),
            '/user/get' => array(array(array('_route' => 'user_get', '_controller' => 'App\\Controller\\UsersController::UserGet'), null, array('POST' => 0), null, false, false, null)),
            '/user/changepassword' => array(array(array('_route' => 'user_changepassword', '_controller' => 'App\\Controller\\UsersController::UserChangePassword'), null, array('POST' => 0), null, false, false, null)),
            '/user/edit' => array(array(array('_route' => 'user_edit', '_controller' => 'App\\Controller\\UsersController::UserEdit'), null, array('POST' => 0), null, false, false, null)),
            '/user/delete' => array(array(array('_route' => 'user_delete', '_controller' => 'App\\Controller\\UsersController::UserDelete'), null, array('POST' => 0), null, false, false, null)),
            '/_profiler' => array(array(array('_route' => '_profiler_home', '_controller' => 'web_profiler.controller.profiler::homeAction'), null, null, null, true, false, null)),
            '/_profiler/search' => array(array(array('_route' => '_profiler_search', '_controller' => 'web_profiler.controller.profiler::searchAction'), null, null, null, false, false, null)),
            '/_profiler/search_bar' => array(array(array('_route' => '_profiler_search_bar', '_controller' => 'web_profiler.controller.profiler::searchBarAction'), null, null, null, false, false, null)),
            '/_profiler/phpinfo' => array(array(array('_route' => '_profiler_phpinfo', '_controller' => 'web_profiler.controller.profiler::phpinfoAction'), null, null, null, false, false, null)),
            '/_profiler/open' => array(array(array('_route' => '_profiler_open_file', '_controller' => 'web_profiler.controller.profiler::openAction'), null, null, null, false, false, null)),
        );
        $this->regexpList = array(
            0 => '{^(?'
                    .'|/_(?'
                        .'|error/(\\d+)(?:\\.([^/]++))?(*:38)'
                        .'|wdt/([^/]++)(*:57)'
                        .'|profiler/([^/]++)(?'
                            .'|/(?'
                                .'|search/results(*:102)'
                                .'|router(*:116)'
                                .'|exception(?'
                                    .'|(*:136)'
                                    .'|\\.css(*:149)'
                                .')'
                            .')'
                            .'|(*:159)'
                        .')'
                    .')'
                .')/?$}sDu',
        );
        $this->dynamicRoutes = array(
            38 => array(array(array('_route' => '_twig_error_test', '_controller' => 'twig.controller.preview_error::previewErrorPageAction', '_format' => 'html'), array('code', '_format'), null, null, false, true, null)),
            57 => array(array(array('_route' => '_wdt', '_controller' => 'web_profiler.controller.profiler::toolbarAction'), array('token'), null, null, false, true, null)),
            102 => array(array(array('_route' => '_profiler_search_results', '_controller' => 'web_profiler.controller.profiler::searchResultsAction'), array('token'), null, null, false, false, null)),
            116 => array(array(array('_route' => '_profiler_router', '_controller' => 'web_profiler.controller.router::panelAction'), array('token'), null, null, false, false, null)),
            136 => array(array(array('_route' => '_profiler_exception', '_controller' => 'web_profiler.controller.exception::showAction'), array('token'), null, null, false, false, null)),
            149 => array(array(array('_route' => '_profiler_exception_css', '_controller' => 'web_profiler.controller.exception::cssAction'), array('token'), null, null, false, false, null)),
            159 => array(array(array('_route' => '_profiler', '_controller' => 'web_profiler.controller.profiler::panelAction'), array('token'), null, null, false, true, null)),
        );
    }
}
