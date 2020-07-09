import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskData.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkChecked: (checked) {
//              setState(() {
//                Provider.of<TaskData>(context).tasks[index].toggleDone();
//              });
                });
          },
          itemCount: taskData.taskKCount,
        );
      },
    );
  }
}
