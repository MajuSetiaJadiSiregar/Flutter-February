import 'package:flutter/material.dart';
import 'package:rumahcodingfebruari/belajar-layout/understand_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rumah Koding",
      debugShowCheckedModeBanner: false,
      home: UnderstandColumn()
    );
  }

}