import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/filtered_jobs_page/filtered_jobs_page.dart';
import 'package:jobin/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobin/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobin/widgets/app_bar/custom_app_bar.dart';
import 'package:jobin/widgets/custom_bottom_bar.dart';
import 'package:jobin/widgets/custom_floating_button.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileProvider(), child: ProfileScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildThirtyThree(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 819.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            decoration: AppDecoration
                                                .outlineBlackF
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL30),
                                            child: _buildTwentySeven(context))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h, bottom: 262.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height:
                                                                13.adaptSize,
                                                            width: 13.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        35.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.h))),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 7.h),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_2015_2018"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmall11),
                                                                  Text(
                                                                      "lbl_ui_ux_desinger"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge),
                                                                  Text(
                                                                      "lbl_tintash"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmall11)
                                                                ]))
                                                      ]),
                                                  SizedBox(height: 25.v),
                                                  Row(children: [
                                                    Container(
                                                        height: 13.adaptSize,
                                                        width: 13.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 2.v),
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.h))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h),
                                                        child: Text(
                                                            "lbl_2015_2018".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodySmall11))
                                                  ])
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h, bottom: 84.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20.h),
                                                      child: Text(
                                                          "lbl_tintash".tr,
                                                          style: CustomTextStyles
                                                              .bodySmall11)),
                                                  SizedBox(height: 22.v),
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height:
                                                                13.adaptSize,
                                                            width: 13.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        37.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.h))),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 7.h),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_2015_2018"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmall11),
                                                                  Text(
                                                                      "lbl_ui_ux_desinger"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge),
                                                                  Text(
                                                                      "lbl_tintash"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmall11)
                                                                ]))
                                                      ])
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 22.h),
                                            child: SizedBox(
                                                height: 413.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 36.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_2018_now".tr,
                                                      style: CustomTextStyles
                                                          .bodySmall11),
                                                  Text(
                                                      "msg_senior_ui_ux_desinger"
                                                          .tr,
                                                      style: theme.textTheme
                                                          .labelLarge),
                                                  Text("lbl_hobotech".tr,
                                                      style: CustomTextStyles
                                                          .bodySmall11)
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin: EdgeInsets.only(left: 16.h),
                                            decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        6.h)))),
                                    _buildFrame(context),
                                    _buildView(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 54,
                width: 54,
                backgroundColor: theme.colorScheme.onPrimary,
                child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsPrimary54x54,
                    height: 27.0.v,
                    width: 27.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL45),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                  height: 30.v,
                  leadingWidth: 46.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgMegaphone,
                      margin: EdgeInsets.only(left: 16.h),
                      onTap: () {
                        onTapMegaphone(context);
                      }),
                  actions: [
                    AppbarTrailingImage(
                        imagePath: ImageConstant.imgMenu,
                        margin: EdgeInsets.symmetric(horizontal: 16.h))
                  ]),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 78.v,
                        width: 73.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 13.h, top: 14.v, bottom: 7.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_umar_farooq".tr,
                                  style: theme.textTheme.headlineSmall),
                              Text("lbl_ui_ux_designer".tr,
                                  style: CustomTextStyles.bodyMedium15)
                            ]))
                  ])),
              SizedBox(height: 12.v)
            ]));
  }

  /// Section Widget
  Widget _buildAbout(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_about".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 3.v),
      Container(
          width: 324.h,
          margin: EdgeInsets.only(left: 1.h, right: 17.h),
          child: Text("msg_lorem_ipsum_dolor".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall10)),
      SizedBox(height: 7.v),
      Container(
          margin: EdgeInsets.only(left: 1.h),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.v),
          decoration: AppDecoration.fillPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(left: 1.h, top: 3.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_my_resume".tr,
                          style: CustomTextStyles.titleSmallOnPrimary),
                      SizedBox(height: 1.v),
                      Text("msg_umar_farooq_resume_pdf".tr,
                          style: CustomTextStyles.bodySmallOnPrimary)
                    ])),
            CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 7.v))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              _buildAbout(context),
              SizedBox(height: 7.v),
              Text("lbl_skills".tr, style: theme.textTheme.titleSmall),
              SizedBox(height: 96.v),
              Text("lbl_education".tr, style: theme.textTheme.titleSmall),
              SizedBox(height: 58.v),
              Text("lbl_experience".tr, style: theme.textTheme.titleSmall)
            ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16.h, top: 310.v, bottom: 468.v),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: _buildMaster(context,
                            masterLabel: "lbl_master".tr,
                            zipcodeLabel: "lbl_2023".tr,
                            punjabUniversityMessage: "msg_punjab_university".tr,
                            lahoreLabel: "lbl_lahore".tr)),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: _buildMaster(context,
                            masterLabel: "lbl_master".tr,
                            zipcodeLabel: "lbl_2023".tr,
                            punjabUniversityMessage: "msg_punjab_university".tr,
                            lahoreLabel: "lbl_lahore".tr))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: _buildMaster(context,
                      masterLabel: "lbl_master".tr,
                      zipcodeLabel: "lbl_2023".tr,
                      punjabUniversityMessage: "msg_punjab_university".tr,
                      lahoreLabel: "lbl_lahore".tr)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: _buildMaster(context,
                      masterLabel: "lbl_master".tr,
                      zipcodeLabel: "lbl_2023".tr,
                      punjabUniversityMessage: "msg_punjab_university".tr,
                      lahoreLabel: "lbl_lahore".tr))
            ]))));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15.h, top: 189.v, bottom: 545.v),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 84.v,
                    width: 359.h,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: appTheme.blueGray100,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder29),
                                          child: Container(
                                              height: 59.adaptSize,
                                              width: 59.adaptSize,
                                              decoration: AppDecoration
                                                  .fillBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder29),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                49.adaptSize,
                                                            width: 49.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .gray200,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24.h)))),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height:
                                                                59.adaptSize,
                                                            width: 59.adaptSize,
                                                            child: CircularProgressIndicator(
                                                                value: 0.5,
                                                                backgroundColor:
                                                                    appTheme
                                                                        .whiteA70001,
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 20.v),
                                                            child: Text(
                                                                "lbl_30".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium)))
                                                  ]))),
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: appTheme.blueGray100,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder29),
                                          child: Container(
                                              height: 59.adaptSize,
                                              width: 59.adaptSize,
                                              decoration: AppDecoration
                                                  .fillBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder29),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Container(
                                                            margin: EdgeInsets.symmetric(
                                                                horizontal: 4
                                                                    .h),
                                                            padding: EdgeInsets.all(
                                                                5.h),
                                                            decoration: AppDecoration.fillGray.copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder24),
                                                            child: Container(
                                                                height: 38
                                                                    .adaptSize,
                                                                width: 38
                                                                    .adaptSize,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme.whiteA70001,
                                                                    borderRadius: BorderRadius.circular(19.h))))),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                59.adaptSize,
                                                            width: 59.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            29.h)))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 20.v),
                                                            child: Text(
                                                                "lbl_70".tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium)))
                                                  ])))
                                    ]),
                                SizedBox(height: 10.v),
                                Text("lbl_web_design".tr,
                                    style: CustomTextStyles.bodySmall10)
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 84.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: appTheme.blueGray100,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder29),
                                        child: Container(
                                            height: 59.adaptSize,
                                            width: 59.adaptSize,
                                            decoration: AppDecoration
                                                .fillBlueGray
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder29),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: 49.adaptSize,
                                                          width: 49.adaptSize,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .gray200,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.h)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                          height: 59.adaptSize,
                                                          width: 59.adaptSize,
                                                          child: CircularProgressIndicator(
                                                              value: 0.5,
                                                              backgroundColor:
                                                                  appTheme
                                                                      .whiteA70001,
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.v),
                                                          child: Text(
                                                              "lbl_50".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelMedium)))
                                                ]))),
                                    SizedBox(height: 8.v),
                                    Text("lbl_html".tr,
                                        style: CustomTextStyles.bodySmall10)
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 131.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: appTheme.blueGray100,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder29),
                                        child: Container(
                                            height: 59.adaptSize,
                                            width: 59.adaptSize,
                                            decoration: AppDecoration
                                                .fillBlueGray
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder29),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: 49.adaptSize,
                                                          width: 49.adaptSize,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .gray200,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.h)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                          height: 59.adaptSize,
                                                          width: 59.adaptSize,
                                                          child: CircularProgressIndicator(
                                                              value: 0.5,
                                                              backgroundColor:
                                                                  appTheme
                                                                      .whiteA70001,
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.v),
                                                          child: Text(
                                                              "lbl_30".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelMedium)))
                                                ]))),
                                    SizedBox(height: 10.v),
                                    Text("lbl_bootstrap".tr,
                                        style: CustomTextStyles.bodySmall10)
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 47.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: appTheme.blueGray100,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder29),
                                        child: Container(
                                            height: 59.adaptSize,
                                            width: 59.adaptSize,
                                            decoration: AppDecoration
                                                .fillBlueGray
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder29),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: 49.adaptSize,
                                                          width: 49.adaptSize,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .gray200,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.h)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                          height: 59.adaptSize,
                                                          width: 59.adaptSize,
                                                          child: CircularProgressIndicator(
                                                              value: 0.5,
                                                              backgroundColor:
                                                                  appTheme
                                                                      .whiteA70001,
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.v),
                                                          child: Text(
                                                              "lbl_85".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelMedium)))
                                                ]))),
                                    SizedBox(height: 8.v),
                                    Text("lbl_css".tr,
                                        style: CustomTextStyles.bodySmall10)
                                  ]))),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text("lbl_ajax".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmall10))
                    ])))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildMaster(
    BuildContext context, {
    required String masterLabel,
    required String zipcodeLabel,
    required String punjabUniversityMessage,
    required String lahoreLabel,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
                decoration: AppDecoration.outlineBlack9003f
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      SizedBox(
                          width: 155.h,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(masterLabel,
                                    style: theme.textTheme.labelLarge!.copyWith(
                                        color: theme.colorScheme.primary)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 3.v, bottom: 4.v),
                                    child: Text(zipcodeLabel,
                                        style: CustomTextStyles.bodySmall8
                                            .copyWith(
                                                color:
                                                    theme.colorScheme.primary)))
                              ])),
                      SizedBox(
                          width: 155.h,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(punjabUniversityMessage,
                                    style: CustomTextStyles.bodySmall8.copyWith(
                                        color: theme.colorScheme.primary)),
                                Text(lahoreLabel,
                                    style: CustomTextStyles.bodySmall8.copyWith(
                                        color: theme.colorScheme.primary))
                              ]))
                    ]))));
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
