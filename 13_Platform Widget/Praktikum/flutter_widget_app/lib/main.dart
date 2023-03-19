import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cupertino/cupertino_app.dart';
import 'material/material_contact_app.dart';
import 'material/material_course_app.dart';
import 'material/material_gridview_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Cupertino App',
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: CupertinoHomePage(),
    );

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData.dark(),
    //   title: 'Contact App',
    //   home: const ContactApp(),
    // );

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSwatch().copyWith(
    //       primary: const Color(0xFF6A1B9A),
    //       secondary: Colors.tealAccent,
    //     ),
    //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //       backgroundColor: const Color(0xFF6A1B9A),
    //       selectedItemColor: Colors.white,
    //       unselectedItemColor: Colors.grey[400],
    //     ),
    //     appBarTheme: const AppBarTheme(
    //       systemOverlayStyle: SystemUiOverlayStyle(
    //           statusBarColor: Color(0xFF6A1B9A),
    //           systemNavigationBarColor: Color(0xFF6A1B9A)),
    //     ),
    //   ),
    //   title: 'Course App',
    //   home: const CourseApp(),
    // );

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     primaryColor: Colors.blue,
    //     iconTheme: const IconThemeData(color: Colors.white),
    //   ),
    //   title: 'Gridview App',
    //   home: const GridViewApp(),
    // );
  }
}
