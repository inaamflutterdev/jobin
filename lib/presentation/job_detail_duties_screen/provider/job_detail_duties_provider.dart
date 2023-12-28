import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/job_detail_duties_screen/models/job_detail_duties_model.dart';

/// A provider class for the JobDetailDutiesScreen.
///
/// This provider manages the state of the JobDetailDutiesScreen, including the
/// current jobDetailDutiesModelObj

// ignore_for_file: must_be_immutable
class JobDetailDutiesProvider extends ChangeNotifier {
  TextEditingController fullNamevalueController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  JobDetailDutiesModel jobDetailDutiesModelObj = JobDetailDutiesModel();

  @override
  void dispose() {
    super.dispose();
    fullNamevalueController.dispose();
    emailController.dispose();
    countryController.dispose();
    phoneNumberController.dispose();
  }
}
