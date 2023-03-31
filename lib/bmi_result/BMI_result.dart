import 'dart:math';

import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

  double result ;
  bool isMale = true ;

  double age  ;
  BmiResult(
      this.age ,
      this.isMale ,
      this.result ,
      ) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title:Text(
          "BMI RESULT" ,
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400] ,

                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        children: [
                          Text(
                            "GENDER : ${isMale ? "MALE" : "FEMALE "} " ,
                            style: TextStyle(
                              fontSize: 30.0 ,
                              fontWeight:FontWeight.bold ,
                            ),

                          ) ,
                          Text (
                            "Result : ${result.round()}" ,
                            style: TextStyle(
                              fontSize: 30.0 ,
                              fontWeight:FontWeight.bold ,
                            ),

                          ) ,
                          Text (
                            "Age : ${age.round()}" ,
                            style: TextStyle(
                              fontSize: 30.0 ,
                              fontWeight:FontWeight.bold ,
                            ),

                          ),
                        ],
                      ),
                    ) ,


                  ],
                ),

              ) ,
            ],
          ),
        ),
      ),
    );
  }
}
