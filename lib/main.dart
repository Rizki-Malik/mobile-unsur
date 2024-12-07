import 'package:aslab_travel/latihanmodul/pertemuan4.dart';
import 'package:aslab_travel/latihanmodul/pertemuan5.dart';
import 'package:aslab_travel/latihanmodul/pertemuan6.dart';
import 'package:aslab_travel/latihanmodul/pertemuan9api.dart';
import 'package:aslab_travel/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: APISeafoodScreen(),
    );
  }
}
