import 'package:flutter/material.dart';
class Floating extends StatelessWidget {
  const Floating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.logout),
      ),
    );
  }
}
