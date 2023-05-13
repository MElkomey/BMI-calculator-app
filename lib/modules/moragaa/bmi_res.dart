import 'package:flutter/material.dart';

class Res extends StatelessWidget{
  bool isMAle;
  int result;
  int age;
  Res(
      {
        required this.isMAle,
        required this.result,
        required this.age,
      }
      );
  @override
  Widget build(BuildContext context) {

    return(
    Scaffold(
      appBar: AppBar(
        title: Text('BIM Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'Gender: ${isMAle? 'Male': 'Female'}',
            ),
            Text(
                'Result:${result}'
            ),
            Text('age: $age'),
          ],
        ),
      ),
    )
    );
  }

}


