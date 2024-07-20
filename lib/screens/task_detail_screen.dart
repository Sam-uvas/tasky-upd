import 'package:flutter/material.dart';
import '../models/task_model.dart';

class TaskDetailScreen extends StatelessWidget {
  final Task task;

  TaskDetailScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task.title}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Description: ${task.description}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Date Created: ${task.createdAt}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Status: ${task.isCompleted ? 'Completed' : 'Pending'}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
