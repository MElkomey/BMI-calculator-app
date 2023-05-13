import 'package:flutter/material.dart';

class Archiived extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child:
        Expanded(
          child: Image(
            //width: 400,
            //height: 400,
            image: NetworkImage(
                'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-9/65953462_1241556592685222_4685343161365561344_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=6xOw0gepvtwAX8ays44&_nc_ht=scontent.fcai21-1.fna&oh=00_AT_zeVgu5etXtkV1Q8q17YQKBAdU3ykGv8yCejLjBZJXxw&oe=6235614F'
            ),
          ),
        ) ,
      )
    ;
  }
}