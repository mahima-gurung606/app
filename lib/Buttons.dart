import 'dart:math';

import 'package:flutter/material.dart';
class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();

}
class _ButtonsState extends State<Buttons> {
  Color color1= Colors.green;
  Color color2= Colors.cyan;
  bool pressed=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:pressed? color1:color2 ,
      appBar: AppBar(
        title: Text("Custom Button"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          MaterialButton(
            child: Text("Click on me",style: TextStyle(color: Colors.black,),),
            minWidth: 250,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.blueGrey,
            onPressed: () {
              print("welcome to my island");
              if(pressed == false){
                pressed= true;
                setState(() {

                });
              }else{
                pressed=false;
                setState(() {

                });
              }
            },
          ),
        ],
      ),
    );
  }
}
