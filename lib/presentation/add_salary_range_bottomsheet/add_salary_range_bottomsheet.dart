import '../add_salary_range_bottomsheet/widgets/eightynine_item_widget.dart';
import 'models/add_salary_range_model.dart';
import 'models/eightynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/widgets/custom_checkbox_button.dart';
import 'package:jobin/widgets/custom_elevated_button.dart';
import 'package:jobin/widgets/custom_text_form_field.dart';
import 'provider/add_salary_range_provider.dart';

class AddSalaryRangeBottomsheet extends StatefulWidget {
  const AddSalaryRangeBottomsheet({Key? key}) : super(key: key);

  @override
  AddSalaryRangeBottomsheetState createState() =>
      AddSalaryRangeBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddSalaryRangeProvider(),
        child: AddSalaryRangeBottomsheet());
  }
}

class AddSalaryRangeBottomsheetState extends State<AddSalaryRangeBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
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
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("lbl_salary_range".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 9.v),
              _buildPriceRow(context),
              SizedBox(height: 10.v),
              _buildJobTypeColumn(context),
              SizedBox(height: 8.v),
              Text("msg_experience_level".tr,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 7.v),
              _buildBeginnerCheckBox(context),
              SizedBox(height: 11.v),
              _buildIntermediateCheckBox(context),
              SizedBox(height: 13.v),
              _buildExpertCheckBox(context),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                  width: 219.h,
                  text: "lbl_show_results".tr,
                  onPressed: () {
                    onTapShowResults(context);
                  },
                  alignment: Alignment.center),
              SizedBox(height: 50.v)
            ]));
  }

  /// Section Widget
  Widget _buildPriceColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text("lbl_min_range".tr,
              style: CustomTextStyles.bodySmallOpenSans_1)),
      SizedBox(height: 2.v),
      Selector<AddSalaryRangeProvider, TextEditingController?>(
          selector: (context, provider) => provider.priceController,
          builder: (context, priceController, child) {
            return CustomTextFormField(
                width: 164.h,
                controller: priceController,
                hintText: "lbl_20_000_pkr".tr,
                borderDecoration: TextFormFieldStyleHelper.outlineBlackF,
                filled: true,
                fillColor: appTheme.lightBlue30019);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPriceColumn1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_min_range".tr, style: CustomTextStyles.bodySmallOpenSans_1),
      SizedBox(height: 2.v),
      Selector<AddSalaryRangeProvider, TextEditingController?>(
          selector: (context, provider) => provider.priceController1,
          builder: (context, priceController1, child) {
            return CustomTextFormField(
                width: 163.h,
                controller: priceController1,
                hintText: "lbl_40_000_pkr".tr,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.outlineBlackF,
                filled: true,
                fillColor: appTheme.lightBlue30019);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildPriceColumn(context), _buildPriceColumn1(context)]);
  }

  /// Section Widget
  Widget _buildJobTypeColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text("lbl_job_type".tr, style: theme.textTheme.titleMedium)),
      SizedBox(height: 8.v),
      Consumer<AddSalaryRangeProvider>(builder: (context, provider, child) {
        return Wrap(
            runSpacing: 16.v,
            spacing: 16.h,
            children: List<Widget>.generate(
                provider.addSalaryRangeModelObj.eightynineItemList.length,
                (index) {
              EightynineItemModel model =
                  provider.addSalaryRangeModelObj.eightynineItemList[index];
              return EightynineItemWidget(model, onSelectedChipView1: (value) {
                provider.onSelectedChipView1(index, value);
              });
            }));
      })
    ]);
  }

  /// Section Widget
  Widget _buildBeginnerCheckBox(BuildContext context) {
    return Selector<AddSalaryRangeProvider, bool?>(
        selector: (context, provider) => provider.beginnerCheckBox,
        builder: (context, beginnerCheckBox, child) {
          return CustomCheckboxButton(
              text: "lbl_beginner".tr,
              value: beginnerCheckBox,
              onChange: (value) {
                context.read<AddSalaryRangeProvider>().changeCheckBox1(value);
              });
        });
  }

  /// Section Widget
  Widget _buildIntermediateCheckBox(BuildContext context) {
    return Selector<AddSalaryRangeProvider, bool?>(
        selector: (context, provider) => provider.intermediateCheckBox,
        builder: (context, intermediateCheckBox, child) {
          return CustomCheckboxButton(
              text: "lbl_intermediate".tr,
              value: intermediateCheckBox,
              onChange: (value) {
                context.read<AddSalaryRangeProvider>().changeCheckBox2(value);
              });
        });
  }

  /// Section Widget
  Widget _buildExpertCheckBox(BuildContext context) {
    return Selector<AddSalaryRangeProvider, bool?>(
        selector: (context, provider) => provider.expertCheckBox,
        builder: (context, expertCheckBox, child) {
          return CustomCheckboxButton(
              text: "lbl_expert".tr,
              value: expertCheckBox,
              onChange: (value) {
                context.read<AddSalaryRangeProvider>().changeCheckBox3(value);
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
