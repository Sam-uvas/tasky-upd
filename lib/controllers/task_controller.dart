/*import 'package:get/get.dart';
import '../models/task_model.dart';
import 'package:flutter/material.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;
  var taskTextController = TextEditingController();

  void addTask(String title) {
    tasks.add(Task(title: title, description: '', createdAt: DateTime.now(), dateCreated: null));
    taskTextController.clear();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    var task = tasks[index];
    task.isCompleted = !task.
    tasks] = ta }

 {
    isFabOpen.value = !isFabOpen.value;
  }
}

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../models/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;
  final taskTextController = TextEditingController();

  void addTask(String title) {
    tasks.add(Task(title: title, description: 'Description', createdAt: DateTime.now()));
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    var task = tasks[index];
    task.isCompleted = !task.isCompleted;
    tasks[index] = task; // To update the observable list
  }

  void toggleFab() {
    isFabOpen.value = !isFabOpen.value;
  }
}

/
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../models/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;
  final taskTextController = TextEditingController();

  void addTask(String title) {
    if (title.isNotEmpty) {
      tasks.add(Task(title: title, description: 'Description', createdAt: DateTime.now()));
    }
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    var task = tasks[index];
    task.isCompleted = !task.isCompleted;
    tasks[index] = task; // To update the observable list
  }

  void toggleFab() {
    isFabOpen.value = !isFabOpen.value;
  }
}

import 'package:get/get.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;

  // Example methods to modify the observable list
  void addTask(String title) {
    tasks.add(Task(title: title, description: '', isCompleted: false));
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    tasks.refresh(); // To notify listeners of the change
  }

  void toggleFab() {
    isFabOpen.value = !isFabOpen.value;
  }
}

class Task {
  String title;
  String description;
  bool isCompleted;

  Task({required this.title, required this.description, this.isCompleted = false});
}

*/
/*
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tasky/models/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;
  var taskTextController = TextEditingController();

  void addTask(String title) {
    tasks.add(Task(
      id: UniqueKey().toString(),
      title: title,
      description: 'Description for $title', createdAt: DateTime.now(),
    ));
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    tasks.refresh();
  }

  void toggleFab() {
    isFabOpen.value = !isFabOpen.value;
  }
}
*/
/*
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tasky/models/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;
  var taskTextController = TextEditingController();

  void addTask(String title, String text) {
    final newTask = Task(
      id: UniqueKey().toString(), // Use a unique identifier (e.g., UUID)
      title: title,
      description: 'Description for $title',
      createdAt: DateTime.now(),
    );
    tasks.add(newTask);
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    tasks.refresh();
  }

  void toggleFab() {
    isFabOpen.value = !isFabOpen.value;
  }
}

*//*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'task.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;
  var isFabOpen = false.obs;
  var taskTextController = TextEditingController();

  void addTask(String title, String description) {
    var task = Task(
      id: DateTime.now().toString(),
      title: title,
      description: description, createdAt:DateTime.now(),
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
}
*/
/*
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
      description: description, createdAt:DateTime.now(),
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
    // Fetch the username from storage or state management
    username.value = "User"; 
    // Replace with actual username fetching logic
  void updateTask(int index, String title, String description) {
    tasks[index].title = title;
    tasks[index].description = description;
    tasks.refresh();
  }
}
}*//*
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
    // Fetch the username from storage or state management
    username.value = "User"; 
    // Replace with actual username fetching logic
  }

   void updateTask(int index, String title, String description) {
    tasks[index].title = title;
    tasks[index].description = description;
    tasks.refresh();
    print("Task updated: $title, $description");
  }
}
*/

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tasky/models/task_model.dart';
// Ensure this path is correct

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
