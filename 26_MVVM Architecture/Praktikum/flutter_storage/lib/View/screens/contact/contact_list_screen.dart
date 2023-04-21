import 'package:flutter/material.dart';
import 'package:flutter_storage/View/components/contact_item_card.dart';
import 'package:flutter_storage/model/db_manager.dart';
import 'package:flutter_storage/View/screens/contact/contact_add_screen.dart';
import 'package:provider/provider.dart';

class ContactListScreen extends StatelessWidget {
  final DbManager manager;
  const ContactListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<DbManager>(
          builder: (context, manager, child) {
            final contactItems = manager.contactModels;
            return ListView.separated(
              itemCount: contactItems.length,
              itemBuilder: (context, index) {
                final item = contactItems[index];
                return InkWell(
                  onTap: () async {
                    final selectedTask = await manager.getContactById(item.id!);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddContact(
                          contactModel: selectedTask,
                        ),
                      ),
                    );
                  },
                  child: ContactItemCard(
                    contact: item,
                    onPressed: () {
                      manager.deleteContact(item.id!);
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.nama} Deleted')),
                      );
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
            );
          },
        ));
  }
}
