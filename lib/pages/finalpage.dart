import 'package:app/data/whatsappdata.dart';
import 'package:app/model/whatsapp.dart';
import 'package:flutter/material.dart';

class Finalpage extends StatelessWidget {
  WhatsApp whatsApp;
  Finalpage({super.key, required this.whatsApp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // title: Text("chats"),
        title: Text(
          "${whatsApp.name}",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 60,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("${messages}"))),
              ),
            ),
            Text(
              "Hello suzan, how have you been?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "I hope this message finds you well!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
