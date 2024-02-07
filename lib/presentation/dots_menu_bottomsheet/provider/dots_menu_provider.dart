import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/dots_menu_bottomsheet/models/dots_menu_model.dart';
import '../models/eightyeight_item_model.dart';

/// A provider class for the DotsMenuBottomsheet.
///
/// This provider manages the state of the DotsMenuBottomsheet, including the
/// current dotsMenuModelObj

// ignore_for_file: must_be_immutable
class DotsMenuProvider extends ChangeNotifier {
  DotsMenuModel dotsMenuModelObj = DotsMenuModel();

  bool addSalaryRange = false;

  bool beginner = false;

  bool intermediate = false;

  bool expert = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeCheckBox1(bool value) {
    addSalaryRange = value;
    notifyListeners();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    dotsMenuModelObj.eightyeightItemList.forEach((element) {
      element.isSelected = false;
    });
    dotsMenuModelObj.eightyeightItemList[index].isSelected = value;
    notifyListeners();
  }

  void changeCheckBox2(bool value) {
    beginner = value;
    notifyListeners();
  }

  void changeCheckBox3(bool value) {
    intermediate = value;
    notifyListeners();
  }

  void changeCheckBox4(bool value) {
    expert = value;
    notifyListeners();
  }
}
