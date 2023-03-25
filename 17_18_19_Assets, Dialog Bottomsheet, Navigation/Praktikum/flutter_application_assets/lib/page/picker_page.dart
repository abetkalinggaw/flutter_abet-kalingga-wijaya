import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({Key? key}) : super(key: key);

  @override
  _PickerPageState createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  DateTime selectedDate = DateTime.now();
  Color selectedColor = Colors.red;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _selectColor(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedColor,
              onColorChanged: (Color color) {
                setState(() => selectedColor = color);
              },
              labelTypes: const [],
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  String _fileName = '';
  int _fileSize = 0;
  bool _isImage = false;
  late File _imageFile;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'gif'],
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      print(file.path);

      setState(() {
        _fileName = file.name;
        _fileSize = file.size;
        _isImage = file.name.endsWith('.jpg') ||
            file.name.endsWith('.jpeg') ||
            file.name.endsWith('.png') ||
            file.name.endsWith('.gif');
        if (_isImage) {
          _imageFile = File(file.path!);
        }
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        title: const Text('Interactive Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: pickerFiled(context),
      ),
    );
  }

  Column pickerFiled(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          child: TextFormField(
            readOnly: true,
            decoration: const InputDecoration(
              labelText: 'Select a date',
              labelStyle: TextStyle(fontSize: 20),
            ),
            controller: TextEditingController(
              text: '${selectedDate.toLocal()}'.split(' ')[0],
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: const Text('Select Date'),
        ),
        const SizedBox(height: 26),
        GestureDetector(
          child: Container(
            height: 100,
            width: double.infinity,
            color: selectedColor,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _selectColor(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedColor,
              ),
              child: const Text('Pick Color'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Selected file:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            _isImage
                ? Image.file(_imageFile, height: 200)
                : const Text(
                    'File type not supported',
                    style: TextStyle(fontSize: 16),
                  ),
            const SizedBox(height: 10),
            Text(
              'File name: $_fileName',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'File size: $_fileSize bytes',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: pickFile,
              child: const Text('Pick a file'),
            ),
          ],
        ),
      ],
    );
  }
}
