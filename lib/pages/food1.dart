import 'package:flutter/material.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 710,
          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              color: Colors.grey,
              border: Border.all(color: Colors.yellow)),
        ),
      ),
    );
  }
}
