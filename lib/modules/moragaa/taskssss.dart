import 'package:flutter/material.dart';

class Taskat extends StatelessWidget{
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
                'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/136168879_2498014737172405_2712167283069009907_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=72hLNBNMPTIAX9JSUJv&_nc_ht=scontent-hbe1-1.xx&oh=00_AT_csDWzx1ynCXpKZPT37t_zWS1psDLNbuEy_G__OzaKCA&oe=6235FD20'
            ),
          ),
        ) ,
      )
    ;
  }
}