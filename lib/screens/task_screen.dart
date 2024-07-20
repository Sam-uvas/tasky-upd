import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/task_controller.dart';
import 'task_detail_screen.dart';

class TaskScreen extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    taskController.fetchUsername(); 

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Hello, ${taskController.username.value}👋')),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('EEE, MMM d').format(DateTime.now()),
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Obx(() {
              int totalTasks = taskController.tasks.length;
              int completedTasks = taskController.tasks.where((task) => task.isCompleted).length;

              return Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildStatCard('Total Tasks', '$totalTasks'),
                        _buildStatCard('Completed Tasks', '$completedTasks'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Tasks of the Day',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      child: Obx(() {
                        return ListView.builder(
                          itemCount: taskController.tasks.length,
                          itemBuilder: (context, index) {
                            final task = taskController.tasks[index];
                            return Dismissible(
                              key: Key(task.id),
                              onDismissed: (direction) {
                                taskController.deleteTask(index);
                              },
                              background: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                alignment: AlignmentDirectional.centerStart,
                                color: Colors.red,
                                child: Icon(Icons.delete, color: Colors.white),
                              ),
                              child: ListTile(
                                title: Text(task.title),
                                subtitle: Text(task.description),
                                trailing: Checkbox(
                                  value: task.isCompleted,
                                  onChanged: (bool? value) {
                                    taskController.toggleTaskCompletion(index);
                                  },
                                ),
                                onTap: () {
                                  Get.to(TaskDetailScreen(task: task));
                                },
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Obx(() {
        return taskController.isFabOpen.value
            ? _buildFabExpand(context, taskController)
            : _buildFabCollapse(taskController);
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.indigo[900],
        unselectedItemColor: Colors.indigo[900],
        onTap: (index) {},
      ),
    );
  }

  Widget _buildStatCard(String title, String count) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(count, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }

  Widget _buildFabExpand(BuildContext context, TaskController taskController) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton.extended(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                var titleController = TextEditingController();
                var descriptionController = TextEditingController();
                return AlertDialog(
                  title: Text('Add Task'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(hintText: 'Enter task title'),
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(hintText: 'Enter task description'),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        taskController.addTask(titleController.text, descriptionController.text);
                        Navigator.of(context).pop();
                      },
                      child: Text('Add'),
                    ),
                  ],
                );
              },
            );
          },
          icon: Icon(Icons.task_alt),
          label: Text('Create Task'),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          onPressed: taskController.toggleFab,
          child: Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _buildFabCollapse(TaskController taskController) {
    return FloatingActionButton(
      onPressed: taskController.toggleFab,
      child: Icon(Icons.add),
    );
  }
}
