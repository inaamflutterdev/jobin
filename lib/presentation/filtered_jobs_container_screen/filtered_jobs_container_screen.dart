import 'models/filtered_jobs_container_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/filtered_jobs_page/filtered_jobs_page.dart';
import 'package:jobin/widgets/custom_bottom_bar.dart';
import 'provider/filtered_jobs_container_provider.dart';

class FilteredJobsContainerScreen extends StatefulWidget {
  const FilteredJobsContainerScreen({Key? key}) : super(key: key);

  @override
  FilteredJobsContainerScreenState createState() =>
      FilteredJobsContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FilteredJobsContainerProvider(),
        child: FilteredJobsContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class FilteredJobsContainerScreenState
    extends State<FilteredJobsContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.filteredJobsPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.filteredJobsPage;
      case BottomBarEnum.Jobs:
        return "/";
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.filteredJobsPage:
        return FilteredJobsPage();
      default:
        return DefaultWidget();
    }
  }
}
