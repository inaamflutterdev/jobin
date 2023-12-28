import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack9003f1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 28.v),
            decoration: BoxDecoration(
              color: appTheme.amber300,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofileItemModelObj.jobTitle!,
                  style: CustomTextStyles.titleMedium16,
                ),
                SizedBox(height: 5.v),
                Text(
                  userprofileItemModelObj.location!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 7.v),
                SizedBox(
                  height: 18.v,
                  width: 63.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 18.v,
                          width: 63.h,
                          decoration: BoxDecoration(
                            color: appTheme.black9003f.withOpacity(0.06),
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          userprofileItemModelObj.employmentType!,
                          style: CustomTextStyles.labelLarge12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 24.v,
                  width: 13.h,
                ),
                SizedBox(height: 9.v),
                Text(
                  userprofileItemModelObj.todayText!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 6.v),
                Text(
                  userprofileItemModelObj.salaryRange!,
                  style: CustomTextStyles.labelLarge12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
