/*class Task {
  String title;
  String description;
  DateTime dateCreated;
  bool isCompleted;

  Task({
    required this.title,
    required this.description,
    required this.dateCreated,
    this.isCompleted = false, required DateTime createdAt,
  });
}
*//*
class Task {
  String title;
  String description;
  DateTime createdAt;
  bool isCompleted;

  Task({
    required this.title,
    required this.description,
    required this.createdAt,
    this.isCompleted = false, required String id, 
  });
}
*/
class Task {
  final String id; // Unique identifier for the task
  late final String title;
  late final String description;
  final DateTime createdAt;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    this.isCompleted = false,
  });
}



