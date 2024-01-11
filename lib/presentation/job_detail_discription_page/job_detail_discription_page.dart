import 'models/job_detail_discription_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/widgets/custom_elevated_button.dart';
import 'package:jobin/widgets/custom_icon_button.dart';
import 'provider/job_detail_discription_provider.dart';

class JobDetailDiscriptionPage extends StatefulWidget {
  const JobDetailDiscriptionPage({Key? key}) : super(key: key);

  @override
  JobDetailDiscriptionPageState createState() =>
      JobDetailDiscriptionPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => JobDetailDiscriptionProvider(),
        child: JobDetailDiscriptionPage());
  }
}

class JobDetailDiscriptionPageState extends State<JobDetailDiscriptionPage>
    with AutomaticKeepAliveClientMixin<JobDetailDiscriptionPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.outlineBlackF,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        _buildAboutTheOpportunity(context),
                        SizedBox(height: 66.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration:
                                      IconButtonStyleHelper.outlinePrimary,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgBookmark)),
                              Expanded(
                                  child: CustomElevatedButton(
                                      text: "lbl_apply_for_job".tr,
                                      margin: EdgeInsets.only(left: 19.h),
                                      buttonTextStyle:
                                          CustomTextStyles.bodyMedium15,
                                      onPressed: () {
                                        onTapApplyForJob(context);
                                      }))
                            ])
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildAboutTheOpportunity(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_about_the_opportunity".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 4.v),
      Container(
          width: 331.h,
          margin: EdgeInsets.only(right: 12.h),
          child: Text("msg_lorem_ipsum_dolor".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall)),
      SizedBox(height: 7.v),
      Text("msg_job_responsibilities".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 4.v),
      Container(
          width: 318.h,
          margin: EdgeInsets.only(left: 6.h, right: 18.h),
          child: Text("msg_lorem_ipsum_dolor2".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall))
    ]);
  }

  /// Navigates to the jobDetailDutiesScreen when the action is triggered.
  onTapApplyForJob(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.jobDetailDutiesScreen,
    );
  }
}
