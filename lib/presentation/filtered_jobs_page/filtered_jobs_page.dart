import '../filtered_jobs_page/widgets/userprofile_item_widget.dart';
import 'models/filtered_jobs_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/widgets/app_bar/appbar_title_image.dart';
import 'package:jobin/widgets/app_bar/custom_app_bar.dart';
import 'provider/filtered_jobs_provider.dart';

class FilteredJobsPage extends StatefulWidget {
  const FilteredJobsPage({Key? key}) : super(key: key);

  @override
  FilteredJobsPageState createState() => FilteredJobsPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FilteredJobsProvider(), child: FilteredJobsPage());
  }
}

class FilteredJobsPageState extends State<FilteredJobsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildFilteredJobs(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 20.v),
                      decoration: AppDecoration.outlineBlackF.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30),
                      child: _buildUserProfile(context))
                ]))));
  }

  /// Section Widget
  Widget _buildFilteredJobs(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                  height: 39.v,
                  centerTitle: true,
                  title: Column(children: [
                    Row(children: [
                      AppbarTitleImage(
                          imagePath: ImageConstant.imgMegaphone,
                          onTap: () {
                            onTapMegaphone(context);
                          }),
                      AppbarTitleImage(
                          imagePath: ImageConstant.imgArrowLeft,
                          margin: EdgeInsets.only(left: 283.h))
                    ]),
                    SizedBox(height: 8.v),
                    SizedBox(
                        width: 343.h,
                        child: Divider(color: theme.colorScheme.onPrimary))
                  ]),
                  styleType: Style.bgFill),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("lbl_filtered_jobs".tr,
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 6.v)
            ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Consumer<FilteredJobsProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 20.v);
          },
          itemCount: provider.filteredJobsModelObj.userprofileItemList.length,
          itemBuilder: (context, index) {
            UserprofileItemModel model =
                provider.filteredJobsModelObj.userprofileItemList[index];
            return UserprofileItemWidget(model);
          });
    });
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapMegaphone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.menuScreen,
    );
  }
}
