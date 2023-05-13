import 'package:bmi/models/user_class_model.dart';
import 'package:flutter/material.dart';

class Lscren extends StatelessWidget{
  List<UserModel> users=[
    UserModel(id: 1,name: 'mohamed elsayed elkomey',phone: '+2032325562'),
    UserModel(id: 2,name: 'adel Ali',phone: '+4416441414'),
    UserModel(id: 3,name: 'shanooooob',phone: '+5464151841551'),
    UserModel(id: 4,name: 'fakhzoooooooon',phone: '+218416941'),
    UserModel(id: 5,name: 'ahmed nbnbn ytytyt',phone: '14741511854'),
    UserModel(id: 6,name: 'sdjdabfjbdfbbgbsdfg',phone: '98159483144'),
    UserModel(id: 7,name: 'dfknjdabjfgbjadbgbd',phone: '+6981165414'),
    UserModel(id: 8,name: 'dfgnjdsahguidsujbgsud',phone: '+2032325562'),
    UserModel(id: 9,name: 'kngkdasjgjsgjfsbbjg', phone: '+912454'),
    UserModel(id: 10,name: 'hdfgyhdgfybdbyfgydgf',phone: '+414245454'),
    UserModel(id: 11,name: 'boshnaaaaaaaaaaaaak',phone: '+6924484848'),
    UserModel(id: 1,name: 'mohamed elsayed elkomey',phone: '+2032325562'),
    UserModel(id: 2,name: 'adel Ali',phone: '+4416441414'),
    UserModel(id: 3,name: 'shanooooob',phone: '+5464151841551'),
    UserModel(id: 4,name: 'fakhzoooooooon',phone: '+218416941'),
    UserModel(id: 5,name: 'ahmed nbnbn ytytyt',phone: '14741511854'),
    UserModel(id: 6,name: 'sdjdabfjbdfbbgbsdfg',phone: '98159483144'),
    UserModel(id: 7,name: 'dfknjdabjfgbjadbgbd',phone: '+6981165414'),
    UserModel(id: 8,name: 'dfgnjdsahguidsujbgsud',phone: '+2032325562'),
    UserModel(id: 9,name: 'kngkdasjgjsgjfsbbjg', phone: '+912454'),
    UserModel(id: 10,name: 'hdfgyhdgfybdbyfgydgf',phone: '+414245454'),
    UserModel(id: 11,name: 'boshnaaaaaaaaaaaaak',phone: '+6924484848'),
  ];
  @override
  Widget build(BuildContext context) {
    return(
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Users',
            ),
          ),
          body:
          Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              ListView.separated(
                  itemBuilder: (context, index) => UserItem(users[index]),
                  separatorBuilder: (context,index)=> Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey[300],
                    ),
                  ),
                  itemCount: users.length)

          ),

        )
    );
  }

  Widget UserItem(UserModel user)=> Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          Row(
            children: [
              CircleAvatar(
                child: Text(
                    '${user.id}'
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    '${user.phone}',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 15.0,
          ),
        ]
    ),
  );

}



