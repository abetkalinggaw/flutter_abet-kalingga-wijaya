import 'package:flutter/material.dart';
import 'package:flutter_code_competence_1/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code Competence 1 App',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
