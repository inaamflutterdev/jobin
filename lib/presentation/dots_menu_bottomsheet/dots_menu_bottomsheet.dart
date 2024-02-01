import '../dots_menu_bottomsheet/widgets/eightyeight_item_widget.dart';
import 'models/dots_menu_model.dart';
import 'models/eightyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/widgets/custom_checkbox_button.dart';
import 'package:jobin/widgets/custom_elevated_button.dart';
import 'provider/dots_menu_provider.dart';

class DotsMenuBottomsheet extends StatefulWidget {
  const DotsMenuBottomsheet({Key? key}) : super(key: key);

  @override
  DotsMenuBottomsheetState createState() => DotsMenuBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DotsMenuProvider(), child: DotsMenuBottomsheet());
  }
}

class DotsMenuBottomsheetState extends State<DotsMenuBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderLR30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVectorPrimarycontainer,
                  height: 3.v,
                  width: 26.h,
                  alignment: Alignment.center),
              SizedBox(height: 12.v),
              _buildAddSalaryRange(context),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("lbl_job_type".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 7.v),
              _buildEightyEight(context),
              SizedBox(height: 10.v),
              Text("msg_experience_level".tr,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 7.v),
              _buildBeginner(context),
              SizedBox(height: 11.v),
              _buildIntermediate(context),
              SizedBox(height: 13.v),
              _buildExpert(context),
              SizedBox(height: 35.v),
              CustomElevatedButton(
                  width: 219.h,
                  text: "lbl_show_results".tr,
                  onPressed: () {
                    onTapShowResults(context);
                  },
                  alignment: Alignment.center),
              SizedBox(height: 97.v)
            ]));
  }

  /// Section Widget
  Widget _buildAddSalaryRange(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Selector<DotsMenuProvider, bool?>(
            selector: (context, provider) => provider.addSalaryRange,
            builder: (context, addSalaryRange, child) {
              return CustomCheckboxButton(
                  text: "msg_add_salary_range".tr,
                  value: addSalaryRange,
                  textStyle: CustomTextStyles.labelLargePrimaryContainer,
                  onChange: (value) {
                    context.read<DotsMenuProvider>().changeCheckBox1(value);
                  });
            }));
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Consumer<DotsMenuProvider>(builder: (context, provider, child) {
      return Wrap(
          runSpacing: 16.v,
          spacing: 16.h,
          children: List<Widget>.generate(
              provider.dotsMenuModelObj.eightyeightItemList.length, (index) {
            EightyeightItemModel model =
                provider.dotsMenuModelObj.eightyeightItemList[index];
            return EightyeightItemWidget(model, onSelectedChipView1: (value) {
              provider.onSelectedChipView1(index, value);
            });
          }));
    });
  }

  /// Section Widget
  Widget _buildBeginner(BuildContext context) {
    return Selector<DotsMenuProvider, bool?>(
        selector: (context, provider) => provider.beginner,
        builder: (context, beginner, child) {
          return CustomCheckboxButton(
              text: "lbl_beginner".tr,
              value: beginner,
              onChange: (value) {
                context.read<DotsMenuProvider>().changeCheckBox2(value);
              });
        });
  }

  /// Section Widget
  Widget _buildIntermediate(BuildContext context) {
    return Selector<DotsMenuProvider, bool?>(
        selector: (context, provider) => provider.intermediate,
        builder: (context, intermediate, child) {
          return CustomCheckboxButton(
              text: "lbl_intermediate".tr,
              value: intermediate,
              onChange: (value) {
                context.read<DotsMenuProvider>().changeCheckBox3(value);
              });
        });
  }

  /// Section Widget
  Widget _buildExpert(BuildContext context) {
    return Selector<DotsMenuProvider, bool?>(
        selector: (context, provider) => provider.expert,
        builder: (context, expert, child) {
          return CustomCheckboxButton(
              text: "lbl_expert".tr,
              value: expert,
              onChange: (value) {
                context.read<DotsMenuProvider>().changeCheckBox4(value);
              });
        });
  }

  /// Navigates to the filteredJobsContainerScreen when the action is triggered.
  onTapShowResults(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.filteredJobsContainerScreen,
    );
  }
}
