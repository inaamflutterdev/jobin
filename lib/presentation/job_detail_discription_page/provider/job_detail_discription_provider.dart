import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/job_detail_discription_page/models/job_detail_discription_model.dart';

/// A provider class for the JobDetailDiscriptionPage.
///
/// This provider manages the state of the JobDetailDiscriptionPage, including the
/// current jobDetailDiscriptionModelObj

// ignore_for_file: must_be_immutable
class JobDetailDiscriptionProvider extends ChangeNotifier {
  JobDetailDiscriptionModel jobDetailDiscriptionModelObj =
      JobDetailDiscriptionModel();

  @override
  void dispose() {
    super.dispose();
  }
}
