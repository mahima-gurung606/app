import 'package:app/travelnotes.dart';
import 'package:flutter/material.dart';
class Travelers extends StatelessWidget {
  const Travelers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traveler', style: TextStyle(color: Colors.white),),
        centerTitle: false,
        backgroundColor: Colors.red[600],
        actions: [
          Icon(Icons.search_off_rounded,color: Colors.white,),
          Icon(Icons.logout,color: Colors.white,),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("Tiger NEST",style: TextStyle(color: Colors.orange[800],fontSize: 20,fontWeight: FontWeight.bold),),

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MD.Mehedi Hasan"),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Text("(5)")
                  ],
                )
              ],
            ),
            
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              width: 500,
              decoration: BoxDecoration(color:Colors.purple,borderRadius: BorderRadius.circular(10),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.timer,color: Colors.red[500],),
                    Text("12:00 PM")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_month,color: Colors.red[500],),
                    Text("June 25, 2024"),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(5),
                child: Text("$blog"),),
            
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Text("Contact Us", style: TextStyle(color: Colors.white),),
            ),
            
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              child: Text("Purchase Plan", style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),


    );
  }
}
