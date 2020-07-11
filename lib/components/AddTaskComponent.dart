import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
//import 'package:todoapp/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskData.dart';

class AddTaskComponent extends StatelessWidget {
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
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
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
