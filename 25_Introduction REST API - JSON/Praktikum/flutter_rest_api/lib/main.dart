import 'package:flutter/material.dart';
import 'package:flutter_rest_api/view_model/get_image.dart';
import 'package:flutter_rest_api/view_model/ekplorasi.dart';
import 'package:flutter_rest_api/view_model/post-get_contact.dart';
import 'package:flutter_rest_api/view_model/put_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Section 25',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: PostGet(),
      // home: const PutData(),
      // home: ImageGenerator(),
      // home: GetImage(),
    );
  }
}
