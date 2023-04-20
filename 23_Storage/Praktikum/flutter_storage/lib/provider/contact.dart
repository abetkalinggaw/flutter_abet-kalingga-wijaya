import 'package:flutter/material.dart';
import 'package:flutter_storage/model/get_contact.dart';

class Contact extends ChangeNotifier {
  final List<GetContact> _contact = [];
  List<GetContact> get contact => _contact;

  void add(GetContact contact) {
    _contact.add(contact);
    notifyListeners();
  }
}
