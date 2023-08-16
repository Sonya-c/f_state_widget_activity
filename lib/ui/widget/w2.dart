import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.num});
  final double num;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: num > 0.4
          ? Colors.amber
          : Colors.blue, // should be grey when the decimal is bellow 0.4
      child: Center(
          child: Text(
        num > 0.4 ? "Mayor que 0.4" : "Menor que 0.4",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
