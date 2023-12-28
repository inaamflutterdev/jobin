import 'models/job_detail_duties_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/core/utils/validation_functions.dart';
import 'package:jobin/presentation/filtered_jobs_page/filtered_jobs_page.dart';
import 'package:jobin/widgets/app_bar/appbar_title_image.dart';
import 'package:jobin/widgets/app_bar/custom_app_bar.dart';
import 'package:jobin/widgets/custom_bottom_bar.dart';
import 'package:jobin/widgets/custom_elevated_button.dart';
import 'package:jobin/widgets/custom_text_form_field.dart';
import 'provider/job_detail_duties_provider.dart';

class JobDetailDutiesScreen extends StatefulWidget {
  const JobDetailDutiesScreen({Key? key}) : super(key: key);

  @override
  JobDetailDutiesScreenState createState() => JobDetailDutiesScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => JobDetailDutiesProvider(),
        child: JobDetailDutiesScreen());
  }
}

// ignore_for_file: must_be_immutable
class JobDetailDutiesScreenState extends State<JobDetailDutiesScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
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
                                        borderRadius:
                                            BorderRadius.circular(10.h))),
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
                          decoration:
                              BoxDecoration(color: appTheme.blueGray10001),
                          child: ClipRRect(
                              child: LinearProgressIndicator(
                                  value: 0.16,
                                  backgroundColor: appTheme.blueGray10001,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary)))),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("msg_add_your_contact".tr,
                                  style: theme.textTheme.titleMedium))),
                      SizedBox(height: 9.v),
                      _buildNinetySeven(context),
                      SizedBox(height: 14.v),
                      _buildEmail(context),
                      SizedBox(height: 16.v),
                      _buildCountry(context),
                      SizedBox(height: 15.v),
                      _buildPhoneNumber(context),
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("msg_having_an_issue".tr,
                                style: CustomTextStyles.bodySmallGray50001),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("lbl_tell_us_more".tr,
                                    style: CustomTextStyles.bodySmall10
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ]),
                      SizedBox(height: 6.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          onPressed: () {
                            onTapContinue(context);
                          }),
                      SizedBox(height: 14.v)
                    ]))),
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
  Widget _buildNinetySeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_full_name".tr,
                  style: CustomTextStyles.bodyMediumPrimary)),
          SizedBox(height: 3.v),
          Selector<JobDetailDutiesProvider, TextEditingController?>(
              selector: (context, provider) => provider.fullNamevalueController,
              builder: (context, fullNamevalueController, child) {
                return CustomTextFormField(
                    controller: fullNamevalueController,
                    hintText: "lbl_umar_farooq".tr);
              })
        ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_email".tr,
                  style: CustomTextStyles.bodyMediumPrimary)),
          SizedBox(height: 4.v),
          Selector<JobDetailDutiesProvider, TextEditingController?>(
              selector: (context, provider) => provider.emailController,
              builder: (context, emailController, child) {
                return CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_umar_official29_gmail_com".tr,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_city_country".tr,
                  style: theme.textTheme.bodyLarge)),
          SizedBox(height: 1.v),
          Selector<JobDetailDutiesProvider, TextEditingController?>(
              selector: (context, provider) => provider.countryController,
              builder: (context, countryController, child) {
                return CustomTextFormField(
                    controller: countryController,
                    hintText: "lbl_city_country".tr);
              })
        ]));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_phone_number".tr,
                  style: theme.textTheme.bodyLarge)),
          SizedBox(height: 2.v),
          Row(children: [
            Container(
                width: 84.h,
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 6.v),
                decoration: AppDecoration.outlinePrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIconPakistan,
                          height: 14.v,
                          width: 19.h,
                          margin: EdgeInsets.only(top: 3.v, bottom: 5.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h, bottom: 2.v),
                          child: Text("lbl_92".tr,
                              style: CustomTextStyles.bodyMediumGray500)),
                      Container(
                          height: 18.v,
                          width: 11.h,
                          margin:
                              EdgeInsets.only(left: 6.h, top: 2.v, bottom: 2.v),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowUp,
                                    height: 11.adaptSize,
                                    width: 11.adaptSize,
                                    alignment: Alignment.topCenter),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgArrowDownPrimarycontainer,
                                    height: 11.adaptSize,
                                    width: 11.adaptSize,
                                    alignment: Alignment.bottomCenter)
                              ]))
                    ])),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Selector<JobDetailDutiesProvider,
                            TextEditingController?>(
                        selector: (context, provider) =>
                            provider.phoneNumberController,
                        builder: (context, phoneNumberController, child) {
                          return CustomTextFormField(
                              controller: phoneNumberController,
                              hintText: "lbl_phone_number".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "err_msg_please_enter_valid_phone_number"
                                      .tr;
                                }
                                return null;
                              });
                        })))
          ])
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

  /// Navigates to the jobDetailSkillsRequiredScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.jobDetailSkillsRequiredScreen,
    );
  }
}
