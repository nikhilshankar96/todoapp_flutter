import 'package:flutter/cupertino.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      name: 'Finish this tutorial',
    ),
    Task(
      name: 'Finish nodeJs',
    ),
  ];

  int get taskKCount {
    return tasks.length;
  }
}
