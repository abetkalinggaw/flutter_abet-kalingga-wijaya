import 'package:flutter/material.dart';
import 'package:flutter_application_assets/class/contact.dart';

class ContactApp extends StatefulWidget {
  const ContactApp({super.key});

  @override
  State<ContactApp> createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  final _formState = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  var selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        title: const Text(
          'Contacts',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Icon(
              Icons.person_add_alt_outlined,
              size: 40,
            ),
            const SizedBox(height: 15),
            const Text(
              'Create New Contacts',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Please fill out the form below to add new Contact to your Devices',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formState,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a name";
                      }
                      List<String> words = value.split(" ");
                      if (words.length < 2) {
                        return "Name must consist of at least 2 words";
                      }
                      for (String word in words) {
                        if (!RegExp(r'^[A-Z][a-z]*$').hasMatch(word)) {
                          return "Name must start with a capital letter and can only contain letters";
                        }
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: numberController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a phone number";
                      }
                      if (!RegExp(r'^0[0-9]{7,14}$').hasMatch(value)) {
                        return "Please enter a valid phone number";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE6E6FA),
                            foregroundColor: const Color(0xFF541675),
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {
                            String name = nameController.text.trim();
                            String number = numberController.text.trim();
                            if (_formState.currentState!.validate()) {
                              setState(() {
                                nameController.text = '';
                                numberController.text = '';
                                contacts[selectedIndex].name = name;
                                contacts[selectedIndex].number = number;

                                selectedIndex = -1;
                              });
                            } else {}
                          },
                          child: const Text('Update'),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF541675),
                          foregroundColor: const Color(0xFFE6E6FA),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          String name = nameController.text.trim();
                          String number = numberController.text.trim();
                          if (_formState.currentState!.validate()) {
                            setState(
                              () {
                                nameController.text = '';
                                numberController.text = '';
                                contacts.add(
                                  Contact(name: name, number: number),
                                );
                              },
                            );
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'List Contacts',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: contacts.length,
              itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(5), child: getRow(index)),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return ListTile(
      leading: SizedBox(
        width: 50,
        height: 50,
        child: CircleAvatar(
          backgroundColor: const Color(0xFFE6E6FA),
          child: Text(
            contacts[index].name[0].toUpperCase(),
            style: const TextStyle(
                color: Color(0xFF541675), fontWeight: FontWeight.w600),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            contacts[index].name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            contacts[index].number,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
      trailing: SizedBox(
        width: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: InkWell(
                  onTap: () {
                    setState(
                      () {
                        nameController.text = contacts[index].name;
                        numberController.text = contacts[index].number;
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Color(0xFF000000),
                  )),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  contacts.removeAt(index);
                });
              },
              child: const Icon(
                Icons.delete_outlined,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
