import '../models/eightyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';

// ignore: must_be_immutable
class EightyeightItemWidget extends StatelessWidget {
  EightyeightItemWidget(
    this.eightyeightItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  EightyeightItemModel eightyeightItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        eightyeightItemModelObj.contract!,
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (eightyeightItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.lightBlue30019,
      selectedColor: appTheme.lightBlue30019,
      shape: (eightyeightItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimaryContainer,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
