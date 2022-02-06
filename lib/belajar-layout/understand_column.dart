import 'package:flutter/material.dart';
import 'package:rumahcodingfebruari/belajar-layout/card_column.dart';

class UnderstandColumn extends StatelessWidget {
  const UnderstandColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Learn Column"),),
      body: CardColumn(),
    );
  }

}