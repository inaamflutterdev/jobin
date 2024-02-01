import 'package:flutter/material.dart';
import 'package:jobin/core/app_export.dart';
import 'package:jobin/presentation/job_detail_skills_required_screen/models/job_detail_skills_required_model.dart';

/// A provider class for the JobDetailSkillsRequiredScreen.
///
/// This provider manages the state of the JobDetailSkillsRequiredScreen, including the
/// current jobDetailSkillsRequiredModelObj

// ignore_for_file: must_be_immutable
class JobDetailSkillsRequiredProvider extends ChangeNotifier {
  JobDetailSkillsRequiredModel jobDetailSkillsRequiredModelObj =
      JobDetailSkillsRequiredModel();

  @override
  void dispose() {
    super.dispose();
  }
}
