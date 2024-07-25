import 'package:flutter/material.dart';
class Traveler extends StatelessWidget {
  const Traveler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Traveler"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(100),
                height: 2000,
                width: 1500,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.purple,
                  
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
