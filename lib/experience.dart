import 'package:flutter/material.dart';
class BaliExperience extends StatefulWidget {
  const BaliExperience({super.key});

  @override
  State<BaliExperience> createState() => _BaliExperienceState();
}

class _BaliExperienceState extends State<BaliExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bali Experience",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
