import 'package:flutter/material.dart';

class PicturePage extends StatefulWidget {
  const PicturePage({Key? key});

  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  bool _isZoomed = false;

  void _handleImageTap() {
    setState(() {
      _isZoomed = !_isZoomed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pictures Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _handleImageTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _isZoomed ? 400 : 300,
            height: _isZoomed ? 400 : 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/img3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
