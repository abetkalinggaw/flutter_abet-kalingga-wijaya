import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Text('Contact App'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/picker');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Text('Picker App'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gallery');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Text('Gallery App'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
