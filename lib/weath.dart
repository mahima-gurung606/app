import 'package:flutter/material.dart';
class weath extends StatelessWidget {
  const weath({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.blue,
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" June 28th"),
                            Text("Hey Wesley!",style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w600),),

                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
