import 'package:api_practise_self/home_screen.dart';
import 'package:api_practise_self/new_screen.dart';
import 'package:api_practise_self/upload_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UploadImage(),
    );
  }
}

