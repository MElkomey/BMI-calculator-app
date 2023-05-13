import 'dart:math';

import 'package:bmi/modules/moragaa/bmi_res.dart';
import 'package:flutter/material.dart';

class BmiiCalc extends StatefulWidget{
  @override
  State<BmiiCalc> createState() => _BmiiCalcState();
}

class _BmiiCalcState extends State<BmiiCalc> {
  double height=150;
  bool isMAle=true;
  int weight=50;
  int age=20;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return (
      Scaffold(
    appBar: AppBar(
      title: Text(
       'BMI Calculator',
      ),
    ),
        body: Column(
          children:
          [
            Expanded(
              child:
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: 
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            isMAle=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMAle? Colors.blue:Colors.grey[300],
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage
                                    ('assets/images/male.png'),
                                width: 50.0,
                                height: 50.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Male'
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState(() {
                            isMAle=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: !isMAle? Colors.blue:Colors.grey[300],
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          //color: !isMAle? Colors.blue:Colors.grey[300],
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage
                                  ('assets/images/female.png'),
                                width: 50.0,
                                height: 50.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                  'Female'
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children:
                    [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize:40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children:
                        [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ]
                      ),
                      Slider(
                          value: height,
                          onChanged: (value){
                            setState(() {
                              height=value;
                            });
                            print(value.round());
                          },
                        min:80 ,
                        max:220 ,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child:
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color:Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0,

                              ),
                            ),
                            SizedBox(
                              width: 10.0,),
                            Text(
                              '$weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  heroTag: 'wehight--',
                                  mini:true,
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FloatingActionButton(
                                  mini:true,
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });

                                  },
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color:Colors.grey[300],
                        ),
                       // color: Colors.grey[300],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0,

                              ),
                            ),
                            SizedBox(
                              width: 10.0,),
                            Text(
                              '$age',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  mini:true,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FloatingActionButton(
                                  mini:true,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.red,
              height: 40.0,
              child: MaterialButton(
                onPressed: (){
                  setState(() {
                    double result = weight / pow(height / 100, 2);
                    //print( result.round());
                    Navigator.push(
                      context,
                      MaterialPageRoute (
                        builder: (BuildContext context) => Res(
                          age: age,
                          isMAle: isMAle,
                          result: result.round(),
                        ),
                      ),

                    );
                  });

                },
                child:Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
  )
  );
  }
}