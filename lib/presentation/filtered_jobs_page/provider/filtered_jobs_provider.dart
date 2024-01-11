import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/filtered_jobs_page/models/filtered_jobs_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the FilteredJobsPage.
///
/// This provider manages the state of the FilteredJobsPage, including the
/// current filteredJobsModelObj

// ignore_for_file: must_be_immutable
class FilteredJobsProvider extends ChangeNotifier {
  FilteredJobsModel filteredJobsModelObj = FilteredJobsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
