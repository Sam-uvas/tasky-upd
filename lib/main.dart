import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/welcome_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/task_screen.dart';

void main() {
  runApp(TaskyApp());
}

class TaskyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: WelcomeScreen(),
      getPages: [
        GetPage(name: '/register', page: () => RegistrationScreen()),
        GetPage(name: '/tasks', page: () => TaskScreen()),
      ],
      );
  }
}
 