import 'package:flutter/material.dart';
import 'package:flutter_application_1/dinamarca.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bandeiras',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Dinamarca(),
    );
  }
}

