import 'package:flutter/material.dart';
import 'package:todoapp/components/TasksList.dart';
import 'package:todoapp/components/AddTaskComponent.dart';

const whiteText = TextStyle(
  color: Colors.black,
);

class TaskScreen extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
    return AddTaskComponent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskComponent(),
              ),
            ),
          );
        },
        backgroundColor: Colors.cyan,
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20, left: 30, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      color: Colors.cyan,
                      size: 45,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'WaToDo?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    ' XX tasks',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
//                  height: 400,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
