import 'models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobin/widgets/app_bar/appbar_title.dart';
import 'package:jobin/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobin/widgets/app_bar/custom_app_bar.dart';
import 'provider/menu_provider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  MenuScreenState createState() => MenuScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MenuProvider(), child: MenuScreen());
  }
}

class MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(1, 1),
                        colors: [
                          theme.colorScheme.primary,
                          appTheme.tealA400
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 35.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("lbl_profile".tr,
                                    style: theme.textTheme.titleLarge))
                          ]),
                          SizedBox(height: 27.v),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClock,
                                    height: 22.adaptSize,
                                    width: 22.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 5.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: Text("lbl_history".tr,
                                        style: theme.textTheme.titleLarge))
                              ]),
                          SizedBox(height: 22.v),
                          Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("msg_mute_notification".tr,
                                    style: theme.textTheme.titleLarge))
                          ]),
                          SizedBox(height: 27.v),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 4.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Text("lbl_settings".tr,
                                        style: theme.textTheme.titleLarge))
                              ]),
                          SizedBox(height: 24.v),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUserOnprimary,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 4.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Text("lbl_f_q".tr,
                                        style: theme.textTheme.titleLarge))
                              ]),
                          SizedBox(height: 26.v),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSettingsOnprimary,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 5.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Text("lbl_support".tr,
                                        style: theme.textTheme.titleLarge))
                              ]),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: _buildNinetyOne(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgImage1,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapImageOne(context);
            }),
        title: AppbarTitle(
            text: "lbl_umar_farooq".tr, margin: EdgeInsets.only(left: 11.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowLeft,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildNinetyOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 14.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 2.v),
              child: Text("lbl_logout".tr, style: theme.textTheme.titleSmall)),
          Spacer(),
          Text("msg_app_version_v2_10".tr, style: theme.textTheme.titleSmall)
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImageOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
