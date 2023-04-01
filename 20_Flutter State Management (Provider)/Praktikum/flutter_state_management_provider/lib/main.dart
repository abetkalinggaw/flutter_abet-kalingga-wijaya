import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../page/contacts/contact_page.dart';
import '../page/gallery_page.dart';
import 'home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ContactsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/contact': (context) => ContactsPage(contacts: provider.contacts),
        '/gallery': (context) => const GalleryPage(),
      },
    );
  }
}
