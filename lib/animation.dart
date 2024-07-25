import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Animation'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  height: 200,
                  width: 200,
                  child: Lottie.asset('assets/animations/delivery.json'),
                ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 150,
                width: 150,
                child: Lottie.asset('assets/animations/delivery.json'),
              ),
              Container(
                height: 150,
                width: 150,
                child: Lottie.asset('assets/animations/delivery.json'),
              ),
            ],),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              child: Lottie.asset('assets/animations/delivery.json'),
            ),
            SizedBox(height: 20,),

            Container(
              height: 200,
              width: 200,
              child: Lottie.asset('assets/animations/delivery.json'),
            ),
            Container(
              height: 200,
              width: 200,
              child: Lottie.asset('assets/animations/delivery.json'),
            ),
            Container(
              height: 200,
              width: 200,
              child: Lottie.asset('assets/animations/delivery.json'),
            ),
          ],
        ),
      ),
    );
  }
}
