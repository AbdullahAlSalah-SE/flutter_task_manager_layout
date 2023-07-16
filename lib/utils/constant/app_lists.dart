part of '../../imports/app_imports.dart';

class AppLists {
  static List<Map> all_tasks = [
    {
      "title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "desc": " mouse "
    },
    {"title": "Replacement mouse required", "desc": " mouse "}
  ];
  static List<Map> completed_tasks = [
    {"title": "Replacement mouse required", "desc": " mouse "}
  ];
  static List<Map> procesed_tasks = [
    {"title": "Replacement mouse required", "desc": " mouse "}
  ];
  static List<Map> pending_tasks = [
    {"title": "Replacement mouse required", "desc": " mouse "}
  ];

  static List<Map> list_of_lists = [
    {"List": AppLists.all_tasks},
    {"List": AppLists.completed_tasks},
    {"List": AppLists.procesed_tasks},
    {"List": AppLists.pending_tasks},
  ];
}
