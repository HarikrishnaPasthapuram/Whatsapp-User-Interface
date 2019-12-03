import 'package:flutter/material.dart';
import 'package:whatsapp/WhatsappHome.dart';
void main()=>runApp(Whatsapp());
class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepOrangeAccent,
        accentColor: Colors.orangeAccent
      ),
      home: WhatsappHome(),
    );
  }
}

