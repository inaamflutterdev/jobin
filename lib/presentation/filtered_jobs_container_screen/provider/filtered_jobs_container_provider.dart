import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/filtered_jobs_container_screen/models/filtered_jobs_container_model.dart';

/// A provider class for the FilteredJobsContainerScreen.
///
/// This provider manages the state of the FilteredJobsContainerScreen, including the
/// current filteredJobsContainerModelObj

// ignore_for_file: must_be_immutable
class FilteredJobsContainerProvider extends ChangeNotifier {
  FilteredJobsContainerModel filteredJobsContainerModelObj =
      FilteredJobsContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
