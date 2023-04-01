import 'package:flutter/material.dart';
import './page/contacts/contact.dart';
import '../page/picture_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/contact': (context) => const ContactsPage(),
        '/gallery': (context) => PicturePage(),
      },
    );
  }
}
