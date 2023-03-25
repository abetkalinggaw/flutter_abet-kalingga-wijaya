import 'package:flutter/material.dart';
import 'package:flutter_application_assets/page/contact_page.dart';
import 'package:flutter_application_assets/page/picker_page.dart';
import 'package:flutter_application_assets/page/gallery_page.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/contact': (context) => const ContactApp(),
        '/picker': (context) => const PickerPage(),
        '/gallery': (context) => const GalleryPage(),
      },
    );
  }
}
