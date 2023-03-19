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

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(context).primaryColor,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'JSON ListView in Flutter',
          style: TextStyle(fontSize: 24),
        ),
        toolbarHeight: 70,
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
                  backgroundColor: Colors.green[700],
                  child: Text(
                    // CIRCLE AVATAR FIRST LETTER
                    contact.name[0].toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
    );
  }
}
