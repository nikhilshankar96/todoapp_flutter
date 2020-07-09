import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked, this.taskTitle, this.checkChecked});
  final bool isChecked;
  final String taskTitle;
  final Function checkChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$taskTitle',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: isChecked ? Colors.grey : Colors.black,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
//        checkColor: Colors.white,
        activeColor: Colors.cyan,
        onChanged: checkChecked,
      ),

      //
    );
  }
}
