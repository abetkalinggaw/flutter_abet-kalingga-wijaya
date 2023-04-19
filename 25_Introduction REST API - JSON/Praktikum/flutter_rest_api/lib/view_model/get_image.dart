import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class GetImage extends StatelessWidget {
  final String imageUrl = "https://avatars.dicebear.com/api/:style/:seed.svg";

  Future<String> fetchAvatar(
      {required String style, required String seed}) async {
    final url = Uri.parse(
        imageUrl.replaceAll(':style', style).replaceAll(':seed', seed));
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to Load Image');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Image'),
      ),
      body: FutureBuilder<String>(
        future: fetchAvatar(style: "male", seed: "1"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            final svgString = snapshot.data!;
            return Center(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Container(
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
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
