import "package:flutter/material.dart";

import 'screen/home.dart';

// รหัส keystore 123456

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}
