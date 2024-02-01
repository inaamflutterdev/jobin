import 'package:flutter/material.dart';
import 'package:jobin/presentation/menu_screen/menu_screen.dart';
import 'package:jobin/presentation/home_screen/home_screen.dart';
import 'package:jobin/presentation/profile_screen/profile_screen.dart';
import 'package:jobin/presentation/filtered_jobs_container_screen/filtered_jobs_container_screen.dart';
import 'package:jobin/presentation/job_detail_discription_tab_container_screen/job_detail_discription_tab_container_screen.dart';
import 'package:jobin/presentation/job_detail_duties_screen/job_detail_duties_screen.dart';
import 'package:jobin/presentation/job_detail_skills_required_screen/job_detail_skills_required_screen.dart';
import 'package:jobin/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String menuScreen = '/menu_screen';

  static const String homeScreen = '/home_screen';

  static const String profileScreen = '/profile_screen';

  static const String filteredJobsPage = '/filtered_jobs_page';

  static const String filteredJobsContainerScreen =
      '/filtered_jobs_container_screen';

  static const String jobDetailDiscriptionPage = '/job_detail_discription_page';

  static const String jobDetailDiscriptionTabContainerScreen =
      '/job_detail_discription_tab_container_screen';

  static const String jobDetailDutiesScreen = '/job_detail_duties_screen';

  static const String jobDetailSkillsRequiredScreen =
      '/job_detail_skills_required_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        menuScreen: MenuScreen.builder,
        homeScreen: HomeScreen.builder,
        profileScreen: ProfileScreen.builder,
        filteredJobsContainerScreen: FilteredJobsContainerScreen.builder,
        jobDetailDiscriptionTabContainerScreen:
            JobDetailDiscriptionTabContainerScreen.builder,
        jobDetailDutiesScreen: JobDetailDutiesScreen.builder,
        jobDetailSkillsRequiredScreen: JobDetailSkillsRequiredScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: MenuScreen.builder
      };
}
