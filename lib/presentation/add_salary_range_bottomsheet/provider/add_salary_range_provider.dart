import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/add_salary_range_bottomsheet/models/add_salary_range_model.dart';
import '../models/eightynine_item_model.dart';

/// A provider class for the AddSalaryRangeBottomsheet.
///
/// This provider manages the state of the AddSalaryRangeBottomsheet, including the
/// current addSalaryRangeModelObj

// ignore_for_file: must_be_immutable
class AddSalaryRangeProvider extends ChangeNotifier {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  AddSalaryRangeModel addSalaryRangeModelObj = AddSalaryRangeModel();

  bool beginnerCheckBox = false;

  bool intermediateCheckBox = false;

  bool expertCheckBox = false;

  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
    priceController1.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    addSalaryRangeModelObj.eightynineItemList.forEach((element) {
      element.isSelected = false;
    });
    addSalaryRangeModelObj.eightynineItemList[index].isSelected = value;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    beginnerCheckBox = value;
    notifyListeners();
  }

  void changeCheckBox2(bool value) {
    intermediateCheckBox = value;
    notifyListeners();
  }

  void changeCheckBox3(bool value) {
    expertCheckBox = value;
    notifyListeners();
  }
}
