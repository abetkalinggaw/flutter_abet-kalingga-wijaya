import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class ImageGenerator extends StatefulWidget {
  const ImageGenerator({Key? key}) : super(key: key);

  @override
  _ImageGeneratorState createState() => _ImageGeneratorState();
}

class _ImageGeneratorState extends State<ImageGenerator> {
  final String gambarUrl = "https://avatars.dicebear.com/api/:style/:seed.svg";
  String? _style;
  String? _seed;
  Future<String>? _getImageFuture;

  Future<String> fetchAvatar(
      {required String style, required String seed}) async {
    final url = Uri.parse(
        gambarUrl.replaceAll(':style', style).replaceAll(':seed', seed));
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load image!');
    }
  }

  void generateGambar() {
    if (_style != null && _seed != null) {
      setState(() {
        _getImageFuture = fetchAvatar(style: _style!, seed: _seed!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Pixel Art Image Generator'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Pixel Art',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Style',
                hintText: 'Male / Female',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _style = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Seed',
                hintText: '1/2/3/....',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _seed = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: generateGambar,
              child: const Text('Generate Image'),
            ),
            const SizedBox(height: 20),
            if (_getImageFuture != null)
              Expanded(
                child: FutureBuilder<String>(
                  future: _getImageFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text("Error: ${snapshot.error}"));
                    } else {
                      final svgString = snapshot.data!;
                      return Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[600],
                        ),
                        child: SvgPicture.string(
                          svgString,
                          height: 300,
                          width: 300,
                        ),
                      );
                    }
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
