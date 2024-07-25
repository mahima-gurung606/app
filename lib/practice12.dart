import 'package:flutter/material.dart';
class Practice extends StatelessWidget {
  const Practice({super.key});

  get poster => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Practice"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Text("Blog", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 70,
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Text("Nature", style: TextStyle(color: Colors.white,),),
                ),
                Container(
                  height: 40,
                  width: 70,
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text("Animal", style: TextStyle(color: Colors.black),),
                ),
                Container(
                  height: 40,
                  width: 70,
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text("Fish", style: TextStyle(color: Colors.black),),
                ),
                Container(
                  height: 40,
                  width: 70,
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text("Space", style: TextStyle(color: Colors.black),),
                ),
                Container(
                  height: 40,
                  width: 70,
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Text("Logo", style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    Column(
                      children: [
                        Text("Mahima"),
                        Text("Photographer"),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.fullscreen, size: 30,),
                  ],
                ),
              ],
            ),
            Text('$poster'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),

                    Column(
                      children: [
                        Text("Mahima"),
                        Text("Photographer"),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.fullscreen, size: 30,),
                  ],
                ),
              ],
            ),
            Text('$poster'),
            Center(
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                ),
                child: Center(child: Text("Subscribe", style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
