import 'package:flutter/material.dart';
import 'package:flutter_storage/model/db_manager.dart';
import 'package:flutter_storage/model/contact_model.dart';

import 'package:provider/provider.dart';

class AddContact extends StatefulWidget {
  final ContactModel? contactModel;
  const AddContact({
    Key? key,
    this.contactModel,
  }) : super(key: key);

  @override
  _ContactItemScreenState createState() => _ContactItemScreenState();
}

class _ContactItemScreenState extends State<AddContact> {
  final _nameController = TextEditingController();
  final _nomorController = TextEditingController();
  bool _isUpdate = false;

  @override
  void initState() {
    super.initState();
    if (widget.contactModel != null) {
      _nameController.text = widget.contactModel!.nama;
      _nomorController.text = widget.contactModel!.nomor;
      _isUpdate = true;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nomorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Create Contact', style: TextStyle()),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView(
            children: [
              const Text(
                'Add New Contact',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 30,
              ),
              bodyForm(),
              const SizedBox(
                height: 20,
              ),
              buttonSubmit(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _nameController,
          decoration: InputDecoration(
            hintText: 'Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _nomorController,
          decoration: InputDecoration(
            hintText: 'Number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonSubmit() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      child: const Text(
        'Submit',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onPressed: () {
        if (!_isUpdate) {
          final contact = ContactModel(
              nama: _nameController.text, nomor: _nomorController.text);
          Provider.of<DbManager>(context, listen: false).addContact(contact);
        } else {
          final contact = ContactModel(
            id: widget.contactModel!.id,
            nama: _nameController.text,
            nomor: _nomorController.text,
          );
          Provider.of<DbManager>(context, listen: false).updateContact(contact);
        }
        Navigator.pop(context);
      },
    );
  }
}
