import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FoodLoading extends StatefulWidget {
  const FoodLoading({super.key});

  @override
  State<FoodLoading> createState() => _FoodLoadingState();
}

class _FoodLoadingState extends State<FoodLoading> {
  void initState() {
    Duration(seconds: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Lottie.asset('assets/animations/food.json', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
