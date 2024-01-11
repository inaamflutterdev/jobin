import 'models/job_detail_skills_required_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/filtered_jobs_page/filtered_jobs_page.dart';
import 'package:jobin/widgets/app_bar/appbar_title_image.dart';
import 'package:jobin/widgets/app_bar/custom_app_bar.dart';
import 'package:jobin/widgets/custom_bottom_bar.dart';
import 'package:jobin/widgets/custom_elevated_button.dart';
import 'package:jobin/widgets/custom_outlined_button.dart';
import 'provider/job_detail_skills_required_provider.dart';

class JobDetailSkillsRequiredScreen extends StatefulWidget {
  const JobDetailSkillsRequiredScreen({Key? key}) : super(key: key);

  @override
  JobDetailSkillsRequiredScreenState createState() =>
      JobDetailSkillsRequiredScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => JobDetailSkillsRequiredProvider(),
        child: JobDetailSkillsRequiredScreen());
  }
}

// ignore_for_file: must_be_immutable
class JobDetailSkillsRequiredScreenState
    extends State<JobDetailSkillsRequiredScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 4.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 82.h),
                          child: Row(children: [
                            Container(
                                height: 73.adaptSize,
                                width: 73.adaptSize,
                                margin: EdgeInsets.only(top: 1.v),
                                decoration: BoxDecoration(
                                    color: appTheme.amber300,
                                    borderRadius: BorderRadius.circular(10.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("msg_software_engineer".tr,
                                          style: CustomTextStyles
                                              .titleLargePrimary),
                                      SizedBox(height: 3.v),
                                      Text("lbl_company_name".tr,
                                          style: CustomTextStyles
                                              .bodySmallOpenSans_1),
                                      SizedBox(height: 4.v),
                                      Text("lbl_lahore_pakistan".tr,
                                          style: theme.textTheme.bodySmall)
                                    ]))
                          ]))),
                  SizedBox(height: 16.v),
                  Container(
                      height: 5.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.blueGray10001),
                      child: ClipRRect(
                          child: LinearProgressIndicator(
                              value: 0.34,
                              backgroundColor: appTheme.blueGray10001,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.primary)))),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_add_a_resume_for".tr,
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 12.v),
                  _buildUploadResume(context),
                  SizedBox(height: 15.v),
                  _buildVectorFour(context),
                  SizedBox(height: 12.v),
                  _buildBuildYourResume(context),
                  SizedBox(height: 16.v),
                  _buildBuildYourResume1(context),
                  Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("msg_having_an_issue".tr,
                        style: CustomTextStyles.bodySmallGray50001),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text("lbl_tell_us_more".tr,
                            style: CustomTextStyles.bodySmall10.copyWith(
                                decoration: TextDecoration.underline)))
                  ]),
                  SizedBox(height: 6.v),
                  _buildContinue(context),
                  SizedBox(height: 14.v)
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
  Widget _buildUploadResume(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_upload_resume".tr,
        margin: EdgeInsets.only(left: 16.h, right: 17.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUserPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildVectorFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 11.v),
                  child: SizedBox(width: 150.h, child: Divider())),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text("lbl_or".tr, style: theme.textTheme.titleSmall)),
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 11.v),
                  child: SizedBox(width: 164.h, child: Divider(indent: 14.h)))
            ]));
  }

  /// Section Widget
  Widget _buildBuildYourResume(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_build_your_resume".tr,
        margin: EdgeInsets.only(left: 16.h, right: 17.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUserPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildBuildYourResume1(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_build_your_resume".tr,
        margin: EdgeInsets.only(left: 16.h, right: 17.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUserPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h));
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
