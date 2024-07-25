import 'package:app/constant.dart';
import 'package:app/imagedata.dart';
import 'package:flutter/material.dart';
class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume App",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
                image: DecorationImage(
                  image: NetworkImage("$imageurl"),
                ),
              ),
              width: 110,
              height: 110,
            ),
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  Text("Mahima Gurung",),
                  Text("App Developer"),
                  Icon(Icons.energy_savings_leaf_rounded),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Text('Experience'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [

                  
                  Text('Work Experience',style: TextStyle(color: Colors.blue,fontSize: 20,),),
                  Text("User interface design."),
                  Text("API Integration."),
                ],
              ),
              Column(
                children: [
                  Text('Work Experience',style: TextStyle(color: Colors.blue,fontSize: 20,),),
                  Text("Problem solving.",style: TextStyle(color: Colors.black,fontSize: 15,),),
                  Text("Collaboration.",style: TextStyle(color: Colors.black,fontSize: 15,),),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Work Experience',style: TextStyle(color: Colors.blue,fontSize: 20,),),
                  Text("Project management",style: TextStyle(color: Colors.black),),
                  Text("programming Languages",style: TextStyle(color: Colors.black,),),
                ],
              ),
              Column(
                children: [
                  Text("Contact details",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(Icons.phone_android_outlined),
                  Text("No.+9751625427"),
                ],
              )
            ],
          ),
        ],
       ),
    );
  }
}
