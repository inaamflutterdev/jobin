import '../../../core/app_export.dart';

/// This class is used in the [eightynine_item_widget] screen.
class EightynineItemModel {
  EightynineItemModel({
    this.contract,
    this.isSelected,
  }) {
    contract = contract ?? "Contract";
    isSelected = isSelected ?? false;
  }

  String? contract;

  bool? isSelected;
}
