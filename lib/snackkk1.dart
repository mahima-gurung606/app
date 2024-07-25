import 'package:flutter/material.dart';
class Dailysnack extends StatelessWidget {
  const Dailysnack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(

    ),
      appBar: AppBar(
        title: Text('The Daily Snack'),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 25,
            height: 25,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(17)),

          )
        ],
      ),
body: Column(
  children: [
    Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.symmetric(horizontal: 18),
          child: Column(
            children: [
              Divider(color: Colors.black,),
              Divider(color: Colors.black,thickness: 5,height: 0,),
            ],
          ),
        ),
      ],
    ),
    Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          width: 800,
          height: 200,
          decoration: BoxDecoration( color: Colors.brown,),
        )
      ],
    ),
    Container(
      margin: EdgeInsets.all(17),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Top 10 Holiday ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
              Text("Destination",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
              Text("Holiday is near.We already list the best",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w200),),
              Text("destination for you and your love one to...",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w200),),
              Text("5 min read",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w200,color: Colors.grey,),),

          
            ],
          ),
        ],
      ),
    ),
    Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.symmetric(horizontal: 18),
          child: Column(
            children: [
              Divider(color: Colors.black,thickness: 2,),
            ],
          ),),
      ],
    ),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
      padding: EdgeInsets.only(top: 17),
      margin: EdgeInsets.only(left: 17),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 35,
            width: 90,
            decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100,),border: Border.all(color: Colors.black),),
            child: Text("FOR YOU",style: TextStyle(color: Colors.white),),

          ),
        ],
      ),
    ),

    Container(
      padding: EdgeInsets.only(top: 17),
      margin: EdgeInsets.only(left: 17),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 35,
            width: 90,
            decoration:BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(100,),border: Border.all(color: Colors.black),),
            child: Text("TRENDING",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.only(top: 17),
      margin: EdgeInsets.only(left: 17),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 35,
            width: 90,
            decoration:BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(100,),border: Border.all(color: Colors.black),),
            child: Text("TECH",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.only(top: 17),
      margin: EdgeInsets.only(left: 17),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 35,
            width: 90,
            decoration:BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(100,),border: Border.all(color: Colors.black),),
            child: Text("ECONOMY",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    ),
  ],
),

    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 17,top: 15),
              height: 50,
              width:50 ,
              decoration: BoxDecoration(color: Colors.black12),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Do'less is more' still relevant?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
            Text("4 min read",style: TextStyle(color: Colors.brown),),

          ],
        ),
      ],
    ),
    Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 17,top: 15),
          height: 50,
          width:50 ,
          decoration: BoxDecoration(color: Colors.brown),
              ),
            ],
          ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Green cactus and how to find them",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
        Text("2 min read",style: TextStyle(color: Colors.brown),),
      ],
    ),
         SizedBox(

         )
         //
        ],
      ),
    );


  }
}
