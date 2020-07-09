import 'package:flutter/material.dart';
//import 'package:todoapp/models/task.dart';

class AddTaskComponent extends StatelessWidget {
  final Function addTask;
  AddTaskComponent(this.addTask);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                color: Colors.cyan,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (text) {
                newTaskTitle = text;
              },
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              elevation: 4,
              color: Colors.cyan,
              onPressed: () {
                if (newTaskTitle != null && newTaskTitle != '' && newTaskTitle.length >= 1)
                  addTask(newTaskTitle);
                else
                  Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
