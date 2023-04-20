import 'package:flutter/material.dart';
import 'package:flutter_storage/components/profile.dart';
import 'package:flutter_storage/model/db_manager.dart';
import 'package:flutter_storage/screens/contact/contact_list_screen.dart';
import 'package:flutter_storage/screens/contact/contact_add_screen.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact App'),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddContact(),
            ),
          );
        },
      ),
      body: Consumer<DbManager>(
        builder: (context, manager, child) {
          return ContactListScreen(
            manager: manager,
          );
        },
      ),
    );
  }
}
