import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(TelegramDrawerApp());
}

class TelegramDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram Drawer',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



