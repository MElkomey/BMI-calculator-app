import 'package:bmi/shared/components/components.dart';
import 'package:flutter/material.dart';

class ScrLog extends StatefulWidget{
  @override
  State<ScrLog> createState() => _ScrLogState();
}

class _ScrLogState extends State<ScrLog> {
  @override
  void initState() {
    super.initState();
  }
  bool isPassword=true;
  var emailcontroller= TextEditingController();

  var passwordcontroller= TextEditingController();

  var FormKey=GlobalKey<FormState>();

  var Valid=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading:IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed:(){} ,
        ),
        title:
        Text(
            'login design'
        ),

        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed:(){} ,
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
          ),
          child: Form(
            key: FormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Login',
                  style:
                  TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                  //textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.0,
                ),

                defaultTextForm(
                    contrl: emailcontroller,
                    typ: TextInputType.emailAddress,
                    validte: (value){
                      if(value.isEmpty){
                        return('This Field Must Be Not Empty');
                      }
                      return null;
                    },
                    labell: 'Email',
                    prefix: Icons.mail,
                ),
                SizedBox(
                  height: 10.0,
                ),
                defaultTextForm(
                    contrl: passwordcontroller,
                    typ: TextInputType.visiblePassword,
                    validte: (value){
                      if(value.isEmpty){
                        return('This Field Must Be Not Empty');
                      }
                      return null;
                    },
                    labell: 'password',
                    prefix: Icons.lock,
                  suffix:isPassword? Icons.visibility: Icons.visibility_off ,
                  isPasswrd: isPassword,
                  suffixPressed: (){
                      setState(() {
                        isPassword=!isPassword;
                      });
                  },
                ),



                SizedBox(
                  height: 10.0,
                ),
                defalultButton(
                    text: 'login',
                  toUpperCase: true,
                  background: Colors.red,
                 function: (){
                      if(FormKey.currentState!.validate()){
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      }
                      print('LogIn submitted');
                 }

                 // height: 40.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                defalultButton(
                  function: (){
                    print('Register submitted');
                  },
                  text: 'register',
                  toUpperCase: true,
                  background: Colors.orangeAccent,
                   height: 20.0,
                  width: 100.0,
                  raidos: 20.0,

                ),



                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Don\'t Have An Account?'
                    ),
                    TextButton(onPressed: (){},
                      child: Text(
                          'Register Now'
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),




    );
  }
}