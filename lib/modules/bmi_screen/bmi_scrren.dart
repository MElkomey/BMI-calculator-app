import 'dart:developer';
import 'dart:html';
import 'dart:math';

import 'package:bmi/modules/bmi_result/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget{
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool   isMale=true;
  double height=120.0;
  int    weight=80;
  int    age=20;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return(
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
                  children: [
                    Expanded(
                      child:
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            isMale=true;
                          });

                        },
                        child: Container(
                          decoration:BoxDecoration(
                            color:isMale? Colors.blue :Colors.grey[300],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center ,
                            children:
                            [
                              Image(image: AssetImage(
                                'assets/images/male.png',
                              ),
                                width: 50.0,
                                height: 50.0,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child:
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });

                        },
                        child: Container(
                          decoration:BoxDecoration(
                            color:isMale? Colors.grey[300] :Colors.blue,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center ,
                            children:
                            [
                              Image(image: AssetImage(
                                'assets/images/female.png',
                              ),
                                width: 50.0,
                                height: 50.0,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),                ],
                ),
              )
          ),
          Expanded(
              child:
             Container(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
                 child: Container(
                   decoration:BoxDecoration(
                     color: Colors.grey[300],
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:
                     [
                       Text(
                         'HEIGHT',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 35.0,
                         ),
                       ),
                       Row(

                         textBaseline: TextBaseline.alphabetic,
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:
                         [
                           Text(
                             '${height.round()}',
                             style: TextStyle(
                               fontSize: 35.0,
                               fontWeight: FontWeight.w900,
                             ),
                           ),
                           SizedBox(width: 5,),
                           Text(
                             'cm',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.w900,
                             ),
                           ),
                         ],
                       ),
                       Slider(
                           value:height ,
                           onChanged: (value){
                             setState(() {
                               height=value;
                               print(value.round());
                             });

                             },
                         max: 220,
                         min: 80,
                       )
                     ],
                   ),
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
                        decoration:BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  heroTag: '-wght',
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                FloatingActionButton(
                                  heroTag: '+wght',
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
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
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration:BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  heroTag:'-age',
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                FloatingActionButton(
                                  heroTag: '+age',
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
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
            color: Colors.blue,
            child: MaterialButton(
              onPressed: (){
                var result = weight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Reslt(

                      age: age,
                      isMale:isMale,
                      result: result.round(),
                    )
                )
                );
              },
              child: Text(
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