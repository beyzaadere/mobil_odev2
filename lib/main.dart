

import 'package:flutter/material.dart'; //Flutter materyal kütüphanesini içe aktar

void main() {
  runApp(MyApp());  //Uygulamayı başlatır ve Myapp sınıfını çalıştırır
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangeScreen(), // Ana ekran olarak ColorChangeScreen sınıfını ayarla
       debugShowCheckedModeBanner: false, // Debug banner'ını gizle
    );
  }
}

class ColorChangeScreen extends StatefulWidget {
  @override
  _ColorChangeScreenState createState() => _ColorChangeScreenState(); // Ekranın durumunu yöneten State sınıfını oluştur
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  Color _backgroundColor = Colors.yellow;  // Arka plan rengini sarı olarak başlat

  void change_color() {
    setState(() {

       _backgroundColor = (_backgroundColor == Colors.yellow) // Eğer arka plan sarı ise
                ? Colors.blue.shade900 // Lacivert yap
                : Colors.yellow; // Değilse sarı yap
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: _backgroundColor, // Arka plan rengini ayarlar
      body: Center( // içeriği ortaya taşır
        child: ElevatedButton(
          onPressed: change_color, // Butona tıklandığında change_color fonksiyonunu çağır
          child: Text('Rengi Değiştirmek İçin Tıklayınız'), // Buton üzerindeki metin
        ),
      ),
    );
  }
} 
