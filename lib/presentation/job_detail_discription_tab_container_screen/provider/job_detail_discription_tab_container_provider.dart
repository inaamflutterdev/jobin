import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/job_detail_discription_tab_container_screen/models/job_detail_discription_tab_container_model.dart';

/// A provider class for the JobDetailDiscriptionTabContainerScreen.
///
/// This provider manages the state of the JobDetailDiscriptionTabContainerScreen, including the
/// current jobDetailDiscriptionTabContainerModelObj

// ignore_for_file: must_be_immutable
class JobDetailDiscriptionTabContainerProvider extends ChangeNotifier {
  JobDetailDiscriptionTabContainerModel
      jobDetailDiscriptionTabContainerModelObj =
      JobDetailDiscriptionTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
