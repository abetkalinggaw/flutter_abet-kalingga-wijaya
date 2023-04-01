
import 'package:flutter/material.dart';
import '/class/contact.dart';
import 'dart:async';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage>
    with SingleTickerProviderStateMixin {
  final List<Contact> _newContacts = [
    Contact('Alice', '123456789'),
    Contact('Bob', '987654321'),
    Contact('Charlie', '555555555'),
  ];

  late final AnimationController _listAnimationController;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  Future<void> _openCreateContactPage(
      BuildContext context, Contact contact) async {
    final result = await Navigator.of(context).push(
      PageRouteBuilder(
          pageBuilder: (context, anim1, anim2) =>
              contact.name.isEmpty && contact.phone.isEmpty
                  ? const CreateContactPage()
                  : UpdateContactPage(contact: contact),
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          }),
    );
    if (result != null) {
      setState(() {
        final index =
            _newContacts.indexWhere((element) => element.name == result.name);
        if (index != -1) {
          _newContacts[index] = result;
          _listKey.currentState!.insertItem(index);
        } else {
          _newContacts.add(result);
          _listKey.currentState!.insertItem(_newContacts.length - 1);
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _listAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _newContacts.length,
        itemBuilder: (context, index, animation) {
          final contact = _newContacts[index];
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.phone),
              onTap: () {
                _openCreateContactPage(context, contact);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openCreateContactPage(context, Contact('', ''));
        },
        tooltip: 'Create Contact',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({Key? key}) : super(key: key);

  @override
  _CreateContactPageState createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  bool _isButtonDisabled = true;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..forward();
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  void _createContact() {
    final name = _nameController.text;
    final phone = _phoneController.text;
    if (name.isNotEmpty && phone.isNotEmpty) {
      final newContact = Contact(name, phone);
      Navigator.of(context).pop(newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(_animation),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Contact'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              _animationController.reverse();
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabled = value.isEmpty;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                ),
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabled = value.isEmpty;
                  });
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _isButtonDisabled ? null : _createContact,
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _animationController.dispose();
    super.dispose();
  }
}

class UpdateContactPage extends StatefulWidget {
  final Contact contact;

  const UpdateContactPage({Key? key, required this.contact}) : super(key: key);

  @override
  _UpdateContactPageState createState() => _UpdateContactPageState();
}

class _UpdateContactPageState extends State<UpdateContactPage>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  bool _isButtonDisabled = true;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.contact.name);
    _phoneController = TextEditingController(text: widget.contact.phone);
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..forward();
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  void _updateContact() {
    final name = _nameController.text;
    final phone = _phoneController.text;
    if (name.isNotEmpty && phone.isNotEmpty) {
      final newContact = Contact(name, phone);
      Navigator.of(context).pop(newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(_animation),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Update Contact'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              _animationController.reverse();
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabled = value.isEmpty;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                ),
                onChanged: (value) {
                  setState(() {
                    _isButtonDisabled = value.isEmpty;
                  });
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _isButtonDisabled ? null : _updateContact,
                child: const Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _animationController.dispose();
    super.dispose();
  }
}
