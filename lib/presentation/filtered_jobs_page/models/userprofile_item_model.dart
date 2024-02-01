import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.jobTitle,
    this.location,
    this.employmentType,
    this.todayText,
    this.salaryRange,
    this.id,
  }) {
    jobTitle = jobTitle ?? "Software Engineer";
    location = location ?? "Lahore Pakistan";
    employmentType = employmentType ?? "Full Time";
    todayText = todayText ?? "Today";
    salaryRange = salaryRange ?? "5K - 10K";
    id = id ?? "";
  }

  String? jobTitle;

  String? location;

  String? employmentType;

  String? todayText;

  String? salaryRange;

  String? id;
}
