import 'package:flutter/material.dart';
import 'package:flutter_storage/model/db_manager.dart';
import 'package:flutter_storage/screens/login_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_storage/provider/contact.dart' as contact_store;

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => contact_store.Contact(),
      ),
      ChangeNotifierProvider(
        create: (context) => DbManager(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Galery',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
      },
    );
  }
}
