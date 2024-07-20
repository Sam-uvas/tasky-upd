import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tasky/models/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;
  var taskTextController = TextEditingController();
  var username = ''.obs;

  void addTask(String title, String description) {
    var task = Task(
      id: DateTime.now().toString(),
      title: title,
      description: description,
      createdAt: DateTime.now(),
    );
    tasks.add(task);
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    var task = tasks[index];
    task.isCompleted = !task.isCompleted;
    tasks[index] = task;
  }

  void toggleFab() {
    isFabOpen.value = !isFabOpen.value;
  }

  void fetchUsername() {
    username.value = "User"; 
  }
  
}
