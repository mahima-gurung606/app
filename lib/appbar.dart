import 'package:flutter/material.dart';
class Appbar  extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title Text", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[700],
                ),
                child: Center(child: Text("SAVE", style: TextStyle(color: Colors.white),),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange[700],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title Text", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Description Text"),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[700],
                ),
                child: Center(child: Text("SAVE", style: TextStyle(color: Colors.white),),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange[700],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title Text", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Discription Text"),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[700],
                ),
                child: Center(child: Text("SAVE", style:  TextStyle(color: Colors.white),),),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
