import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_app/class/contact_list.dart';

class ContactApp extends StatefulWidget {
  const ContactApp({Key? key}) : super(key: key);

  @override
  State<ContactApp> createState() => _MaterialHomePageState();
}

class _MaterialHomePageState extends State<ContactApp> {
  List<Contact> _sortedContacts = [];

  @override
  void initState() {
    super.initState();
    _sortedContacts = List.from(contacts);
    _sortedContacts.sort((a, b) => a.name.compareTo(b.name));
  }

  final List<Widget> widgetOptions = const <Widget>[
    Text('Home Page'),
    Text('Settings'),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(context).primaryColor,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: _sortedContacts.length,
          itemBuilder: (BuildContext context, int index) {
            final Contact contact = _sortedContacts[index];
            return ListTile(
              minVerticalPadding: 10,
              leading: SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                  child: Text(
                    // CIRCLE AVATAR FIRST LETTER
                    contact.name[0].toUpperCase(),
                    style: const TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              title: Text(
                contact.name,
                style: const TextStyle(fontSize: 20),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contact.number,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
          },
        ),
      ),

      //     const Center(
      //   child: Text(
      //     'This is Material App',
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              selected: _selectedIndex == 0,
              selectedTileColor: Colors.teal[800],
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              selected: _selectedIndex == 1,
              selectedTileColor: Colors.teal[800],
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
