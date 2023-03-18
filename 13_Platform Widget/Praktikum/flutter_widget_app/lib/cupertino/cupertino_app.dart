import 'package:flutter/cupertino.dart';

class CupertinoHomePage extends StatelessWidget {
  const CupertinoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino App'),
      ),
      child: Center(
        child: Text('This is Cupertino app'),
      ),
    );
  }
}
