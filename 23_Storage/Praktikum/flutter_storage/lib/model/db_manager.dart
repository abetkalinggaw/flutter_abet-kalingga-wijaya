import 'package:flutter/material.dart';
import 'package:flutter_storage/helper/database_helper.dart';
import 'package:flutter_storage/model/contact_model.dart';

class DbManager extends ChangeNotifier {
  List<ContactModel> _contactModels = [];
  late DatabaseHelper _dbHelper;

  List<ContactModel> get contactModels => _contactModels;

  DbManager() {
    _dbHelper = DatabaseHelper();
    _getAllContact();
  }

  void _getAllContact() async {
    _contactModels = await _dbHelper.getContact();
    notifyListeners();
  }

  Future<void> addContact(ContactModel contactModel) async {
    await _dbHelper.insertContact(contactModel);
    _getAllContact();
  }

  Future<ContactModel> getContactById(int id) async {
    return await _dbHelper.getContactById(id);
  }

  void updateContact(ContactModel contactModel) async {
    await _dbHelper.updateContact(contactModel);
    _getAllContact();
  }

  void deleteContact(int id) async {
    await _dbHelper.deleteContact(id);
    _getAllContact();
  }
}
