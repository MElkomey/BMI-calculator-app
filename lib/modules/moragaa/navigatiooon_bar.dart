import 'package:bmi/modules/moragaa/archiived.dart';
import 'package:bmi/modules/moragaa/doneeeeeeeeeee.dart';
import 'package:bmi/modules/moragaa/taskssss.dart';
import 'package:flutter/material.dart';

class Navigateeee extends StatefulWidget{
  @override
  State<Navigateeee> createState() => _NavigateeeeState();
}

class _NavigateeeeState extends State<Navigateeee> {
  int currentindex=0;
  List<String> titles=[
    'كم رهيب من الطاقة الايجابية والطيبة',
    'ألحمد لله علي كل حال',
    '"كم رهيب من الطاقة السلبية "اهرب فور الرؤية',
  ];
  List<Widget> screenns=[
    Taskat(),
    Donnnnnnne(),
    Archiived(),
  ];

  @override
  Widget build(BuildContext context) {
   return(
       Scaffold(
         appBar: AppBar(
           title: Text(
             '${titles[currentindex]}',
           ),
         ),
         bottomNavigationBar:BottomNavigationBar(
           currentIndex: currentindex,
           type: BottomNavigationBarType.fixed,
           onTap: (index){
             setState(() {
               currentindex=index;
             });
           },
           items:
           [
             BottomNavigationBarItem(
                 icon: Icon(Icons.control_point_duplicate_outlined),
               label: 'شنوبى'
             ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.sd_card),
                 label: 'الكومي'
             ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.person_remove),
                 label: 'واحد عرص'
             ),
           ],
         ),
         body: screenns[currentindex],

   ));
  }
}