import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

class FilteredJobsModel {
  List<UserprofileItemModel> userprofileItemList = [
    UserprofileItemModel(
        jobTitle: "Software Engineer",
        location: "Lahore Pakistan",
        employmentType: "Full Time",
        todayText: "Today",
        salaryRange: "5K - 10K"),
    UserprofileItemModel(
        jobTitle: "Software Engineer",
        location: "Lahore Pakistan",
        employmentType: "Full Time",
        todayText: "2H Ago",
        salaryRange: "5K - 10K")
  ];
}
