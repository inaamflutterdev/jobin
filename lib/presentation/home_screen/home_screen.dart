import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/filtered_jobs_page/filtered_jobs_page.dart';
import 'package:jobin/widgets/app_bar/appbar_title_image.dart';
import 'package:jobin/widgets/app_bar/custom_app_bar.dart';
import 'package:jobin/widgets/custom_bottom_bar.dart';
import 'package:jobin/widgets/custom_icon_button.dart';
import 'package:jobin/widgets/custom_search_view.dart';
import 'provider/home_provider.dart';
import 'package:jobin/presentation/dots_menu_bottomsheet/dots_menu_bottomsheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomeScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomeScreenState extends State<HomeScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSix(context),
                  SizedBox(height: SizeUtils.height, width: double.maxFinite)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomAppBar(
                              height: 30.v,
                              title: Padding(
                                  padding: EdgeInsets.only(left: 21.h),
                                  child: Column(children: [
                                    AppbarTitleImage(
                                        imagePath: ImageConstant.imgVector),
                                    SizedBox(height: 5.v),
                                    AppbarTitleImage(
                                        imagePath: ImageConstant.imgVector,
                                        margin: EdgeInsets.only(right: 5.h)),
                                    SizedBox(height: 5.v),
                                    AppbarTitleImage(
                                        imagePath: ImageConstant.imgVector,
                                        margin: EdgeInsets.only(right: 9.h))
                                  ]))),
                          SizedBox(height: 7.v),
                          Text("lbl_umar_farooq".tr,
                              style: theme.textTheme.titleLarge),
                          Text("lbl_12_22_am".tr,
                              style: CustomTextStyles.bodyMedium15),
                          SizedBox(height: 1.v),
                          Text("lbl_2023_12_23".tr,
                              style: CustomTextStyles.bodyMedium15)
                        ]),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        margin: EdgeInsets.only(top: 35.v, bottom: 7.v),
                        onTap: () {
                          onTapImgImageOne(context);
                        })
                  ])),
          SizedBox(height: 13.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: Selector<HomeProvider, TextEditingController?>(
                    selector: (context, provider) => provider.searchController,
                    builder: (context, searchController, child) {
                      return CustomSearchView(
                          controller: searchController,
                          hintText: "lbl_search_job".tr);
                    })),
            Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: CustomIconButton(
                    height: 46.v,
                    width: 52.h,
                    padding: EdgeInsets.all(11.h),
                    onTap: () {
                      onTapBtnSettings(context);
                    },
                    child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsPrimary)))
          ]),
          SizedBox(height: 23.v)
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

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgImageOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [DotsMenuBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapBtnSettings(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => DotsMenuBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
