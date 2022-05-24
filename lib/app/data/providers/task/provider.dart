import 'dart:convert';

import 'package:get/get.dart';
import 'package:learn_app/app/core/utils/keys.dart';
import 'package:learn_app/app/data/services/storage/services.dart';

import '../../models/task.dart';

class TaskProvider{
  StorageService storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    storage.write(taskKey, jsonEncode(tasks));
  }
}