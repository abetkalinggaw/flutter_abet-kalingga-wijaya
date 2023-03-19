import 'package:flutter/material.dart';
import 'material_contact_app.dart';
import 'material_gridview_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      // home: const GridViewApp(),
      home: const ContactApp(),
    );
  }
}
