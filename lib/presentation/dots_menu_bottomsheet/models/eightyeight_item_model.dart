import '../../../core/app_export.dart';

/// This class is used in the [eightyeight_item_widget] screen.
class EightyeightItemModel {
  EightyeightItemModel({
    this.contract,
    this.isSelected,
  }) {
    contract = contract ?? "Contract";
    isSelected = isSelected ?? false;
  }

  String? contract;

  bool? isSelected;
}
