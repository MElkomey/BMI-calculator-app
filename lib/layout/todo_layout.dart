import 'package:bmi/modules/archived_tasks/archived_tasks.dart';
import 'package:bmi/modules/done_tasks/done_tasks.dart';
import 'package:bmi/modules/tasks/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeLayout extends StatefulWidget{
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens=[
    Tasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];
  List<String> titles=[
    'Tasks',
    'DoneTasks',
    'Archived Tasks',
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 150.0,
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(() {
            currentIndex=index;
          });

        },
      ),
      body:screens[currentIndex] ,
    );
  }
}