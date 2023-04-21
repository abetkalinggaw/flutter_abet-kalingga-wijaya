import 'package:flutter/material.dart';
import 'package:flutter_storage/View/components/profile.dart';
import 'package:flutter_storage/model/db_manager.dart';
import 'package:flutter_storage/View/screens/contact/contact_list_screen.dart';
import 'package:flutter_storage/View/screens/contact/contact_add_screen.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Contact App'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                context: context,
                builder: (context) {
                  return FractionallySizedBox(
                    heightFactor: 0.55,
                    child: Column(
                      children: [
                        Builder(builder: (context) => const ProfileSheet()),
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.blue[800],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddContact(),
              ),
            );
          },
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: Text(
            "Add Contact",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
        ),
        child: Consumer<DbManager>(
          builder: (context, manager, child) {
            return ContactListScreen(
              manager: manager,
            );
          },
        ),
      ),
    );
  }
}
