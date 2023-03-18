import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_app/class/course_list.dart';

class CourseApp extends StatefulWidget {
  const CourseApp({Key? key}) : super(key: key);

  @override
  State<CourseApp> createState() => _MaterialHomePageState();
}

class _MaterialHomePageState extends State<CourseApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          'My Flutter App',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {},
              minVerticalPadding: 20,
              title: Text(
                courses[index],
                style: const TextStyle(fontSize: 20),
              ),
            );
          },
        ),
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
