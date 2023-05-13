import 'package:flutter/material.dart';

class Reslt extends StatelessWidget{
  final bool isMale;
  final int result;
  final int age;
  Reslt({
    required this.isMale,
    required this.age,
    required this.result,
});
  @override
  Widget build(BuildContext context) {
  return(Scaffold(
    appBar: AppBar(
      leading: IconButton(

        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      title:
      Text(
        'BMI Result',
      ),

    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Text(
            'Gender : ${isMale? 'Male':'Female'}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Result: : $result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Age : $age',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  ));
  }


}