import 'package:flutter/material.dart';

class HeroAnime extends StatefulWidget {
  const HeroAnime({super.key});

  @override
  State<HeroAnime> createState() => _HeroAnimeState();
}

class _HeroAnimeState extends State<HeroAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Anime"),
        centerTitle: true,
      ),
      body: Column(
        children: [Hero(tag: "patient.jpg", child: Image.asset(" "))],
      ),
    );
  }
}
