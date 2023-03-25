import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/home_page.dart';
import 'page/picker_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF541675),
          secondary: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xFF541675),
            systemNavigationBarColor: Color(0xFFFFFFFF),
          ),
        ),
      ),
      // home: const ContactApp(),

      // --------- TUGAS ADVANCE FORM -----------
      home: const PickerPage(),
    );
  }
}
