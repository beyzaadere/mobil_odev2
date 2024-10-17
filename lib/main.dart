

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangeScreen(),
       debugShowCheckedModeBanner: false,
    );
  }
}

class ColorChangeScreen extends StatefulWidget {
  @override
  _ColorChangeScreenState createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  Color _backgroundColor = Colors.yellow;

  void change_color() {
    setState(() {

       _backgroundColor = (_backgroundColor == Colors.yellow)
                ? Colors.blue.shade900
                : Colors.yellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: change_color,
          child: Text('Rengi Değiştirmek İçin Tıklayınız'),
        ),
      ),
    );
  }
} 
