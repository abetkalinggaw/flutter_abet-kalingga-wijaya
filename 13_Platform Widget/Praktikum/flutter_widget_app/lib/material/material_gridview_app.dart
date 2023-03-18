import 'package:flutter/material.dart';

class GridViewApp extends StatefulWidget {
  const GridViewApp({super.key});

  @override
  State<GridViewApp> createState() => _GridViewAppState();
}

class _GridViewAppState extends State<GridViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: GridView(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.pets,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.pregnant_woman,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.record_voice_over,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.home,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.settings,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.info,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.delete,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.shopping_bag,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.language_sharp,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.face,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.event,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.thumb_up,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.date_range,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.history,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.verified,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.print,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.build,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.watch_later,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.update,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.star_rate,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.trending_up,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.shopping_basket,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.admin_panel_settings,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.explore,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.lock,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.work,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.bookmark,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.preview,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.alarm,
                size: 30,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.blue),
              child: const Icon(
                Icons.extension_rounded,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
