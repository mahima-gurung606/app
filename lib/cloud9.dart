import 'dart:math';

import 'package:flutter/material.dart';
class Cloud extends StatefulWidget {
  const Cloud({super.key});

  @override
  State<Cloud> createState() => _CloudState();
}

class _CloudState extends State<Cloud> {
double _currentValue= 10;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text("Playing Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Icon(Icons.music_note_sharp),
                  ],
                ),
              ),
              Container(
                width: 350,
                margin: EdgeInsets.all(7),
                padding: EdgeInsets.all(70),
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  image: DecorationImage(
                    image: AssetImage("assets/images/ariana.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: Column(
                  children: [

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cloud 95C",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                        Icon(Icons.favorite,color: Colors.red,),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Flame",style: TextStyle(color: Colors.grey,),),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Slider(value: _currentValue,max: 100, divisions: 5,activeColor: Colors.pink, onChanged:(value) {
                    setState(() {
                      _currentValue=value;
                    });
                  }),
                  Container(
                    margin: EdgeInsets.only(left: 27,right: 27,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("3:42",style: TextStyle(color: Colors.grey,),),
                        // Text("4:52",style: TextStyle(color: Colors.grey,),),
                        Text("$_currentValue"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 70,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shuffle,color: Colors.pink,size: 28,),
                      Icon(Icons.fast_rewind_sharp,color: Colors.pink,size: 30,),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.pause,color: Colors.white,size: 30,),
                      ),
                      Icon(Icons.fast_forward,color: Colors.pink,size: 30,),
                      Icon(Icons.repeat_rounded,color: Colors.pink,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
