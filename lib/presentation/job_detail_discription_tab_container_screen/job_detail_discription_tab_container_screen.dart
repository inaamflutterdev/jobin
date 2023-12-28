import 'models/job_detail_discription_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/filtered_jobs_page/filtered_jobs_page.dart';
import 'package:jobin/presentation/job_detail_discription_page/job_detail_discription_page.dart';
import 'package:jobin/widgets/app_bar/appbar_title_image.dart';
import 'package:jobin/widgets/app_bar/custom_app_bar.dart';
import 'package:jobin/widgets/custom_bottom_bar.dart';
import 'provider/job_detail_discription_tab_container_provider.dart';

class JobDetailDiscriptionTabContainerScreen extends StatefulWidget {
  const JobDetailDiscriptionTabContainerScreen({Key? key}) : super(key: key);

  @override
  JobDetailDiscriptionTabContainerScreenState createState() =>
      JobDetailDiscriptionTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => JobDetailDiscriptionTabContainerProvider(),
        child: JobDetailDiscriptionTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class JobDetailDiscriptionTabContainerScreenState
    extends State<JobDetailDiscriptionTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 2.v),
                  Container(
                      height: 82.adaptSize,
                      width: 82.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.amber300,
                          borderRadius: BorderRadius.circular(10.h))),
                  SizedBox(height: 13.v),
                  Text("lbl_company_name".tr,
                      style: CustomTextStyles.bodySmallOpenSans_1),
                  SizedBox(height: 7.v),
                  Text("msg_software_engineer".tr,
                      style: CustomTextStyles.titleLargePrimary),
                  SizedBox(height: 4.v),
                  Text("lbl_lahore_pakistan".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 13.v),
                  _buildJobDetails(context),
                  SizedBox(height: 12.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("msg_posted_on_2023_08_08".tr,
                            style: CustomTextStyles.bodySmallOpenSans)),
                    Padding(
                        padding: EdgeInsets.only(left: 54.h),
                        child: Text("msg_expire_on_2023_09_08".tr,
                            style: CustomTextStyles.bodySmallOpenSans))
                  ]),
                  SizedBox(height: 12.v),
                  _buildTabview(context),
                  _buildTabBarView(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Row(children: [
            AppbarTitleImage(
                imagePath: ImageConstant.imgMegaphonePrimary,
                onTap: () {
                  onTapMegaphone(context);
                }),
            AppbarTitleImage(
                imagePath: ImageConstant.imgArrowLeftPrimary,
                margin: EdgeInsets.only(left: 283.h))
          ]),
          SizedBox(height: 8.v),
          SizedBox(width: 343.h, child: Divider())
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildJobDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 86.h,
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Text("lbl_full_time".tr,
                  style: CustomTextStyles.bodyMediumPrimary)),
          Container(
              width: 151.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 2.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Text("lbl_5k_10k".tr,
                  style: CustomTextStyles.bodyMediumPrimary)),
          Container(
              width: 86.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 1.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Text("lbl_today".tr,
                  style: CustomTextStyles.bodyMediumPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 48.v,
        width: 343.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.h),
            border: Border.all(color: theme.colorScheme.primary, width: 1.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimary,
            labelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(12.h)),
            tabs: [
              Tab(child: Text("lbl_description".tr)),
              Tab(child: Text("lbl_company".tr))
            ]));
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
        height: 368.v,
        child: TabBarView(controller: tabviewController, children: [
          JobDetailDiscriptionPage(),
          JobDetailDiscriptionPage()
        ]));
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

  /// Navigates to the menuScreen when the action is triggered.
  onTapMegaphone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.menuScreen,
    );
  }
}
