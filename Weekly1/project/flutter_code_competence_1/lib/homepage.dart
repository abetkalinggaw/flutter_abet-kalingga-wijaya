// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          'Code Competence 1',
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Tokopaedi',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/welcome.png',
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Welcome to Tokopaedi',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Ramadan tiba, Ramadan tiba! Tiba-tiba Ramadan Di bulan yang penuh berkah ini, Tokopaedi siap berbagi keseruan bareng kamu. Belanja keperluan lebaran jadi hemat & nyaman. Gak perlu nunggu bedug, langsung akses Tokopaedi kamu, yuk!',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Us',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Need to get in touch with us? Either fill out the form with your inquiry or find the departement email you'd like to contract below.",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    maxLines: 4,
                    controller: messageController,
                    decoration: const InputDecoration(
                      labelText: 'Massage',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'Data yang dimasukkan',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Username :\n${usernameController.text}',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                Text(
                                  'Email:\n${emailController.text}',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                Text(
                                  'Massage :\n${messageController.text}',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('OK'),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Submit',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
