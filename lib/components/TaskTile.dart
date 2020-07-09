import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkCheckBox(bool check) {
    setState(() {
      isChecked = check;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: isChecked ? Colors.grey : Colors.black,
        ),
      ),
      trailing: TaskCheck(
        isChecked: isChecked,
        handleCheck: checkCheckBox,
      ),
    );
  }
}

class TaskCheck extends StatelessWidget {
  TaskCheck({this.isChecked, this.handleCheck});
  final bool isChecked;
  final Function handleCheck;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
//        checkColor: Colors.white,
      activeColor: Colors.cyan,
      onChanged: (check) {
        handleCheck(check);
      },
    );
  }
}
