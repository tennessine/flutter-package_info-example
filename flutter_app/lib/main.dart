import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var packageInfo = PackageInfo.fromPlatform();
    packageInfo.then((pi) {
      print(pi.appName);
      print(pi.buildNumber);
      print(pi.packageName);
      print(pi.version);
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
