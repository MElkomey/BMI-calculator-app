import 'package:bmi/shared/components/components.dart';
import 'package:flutter/material.dart';

class MorgLogin extends StatefulWidget{
  @override
  State<MorgLogin> createState() => _MorgLoginState();
}

class _MorgLoginState extends State<MorgLogin> {
  @override
  void initState() {
    super.initState();
  }
  var emailcontroller= TextEditingController();

  var passwordcontroller= TextEditingController();

  var FrmKey= GlobalKey<FormState>();
  bool obsecure=true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
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
            key: FrmKey,
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
                defTextForm(
                    validte: (value){
                      if(value.isEmpty){
                        return('This Form Is Required');
                      };
                      return null;
                    },
                    typ: TextInputType.emailAddress,
                    contrl: emailcontroller,
                    label: 'Email.....',
                    prefix: Icons.email,
                    onChnged: (value){print(value);},
                  onfieldsubmit: (value){print(value);},
                ),

                SizedBox(
                  height: 10.0,
                ),

                defTextForm(
                  validte: (value){
                    if(value.isEmpty){
                      return('This Form Is Required');
                    };
                    return null;
                  },
                  typ: TextInputType.visiblePassword,
                  obsecure: obsecure,
                  contrl: passwordcontroller,
                  label: 'password.....',
                  prefix: Icons.lock,
                  onChnged: (value){print(value);},
                  onfieldsubmit: (value){print(value);},
                  suffix:obsecure? Icons.visibility :Icons.visibility_off,
                    suffixPressed: (){
                    setState(() {
                      obsecure? obsecure=false: obsecure=true;
                    });
                    }
                  ,

                ),

                SizedBox(
                  height: 10.0,
                ),

                defButton(
                  width: 100.0,
                    radis: 20.0,
                    text: 'Login',
                    toUppercase: true,
                    function: (){
                    if(FrmKey.currentState!.validate()){
                      print(emailcontroller);
                      print(passwordcontroller);
                      print('LOGIN PRESSED');
                    };

                    },
                    bachground: Colors.red
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