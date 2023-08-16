import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.num, required this.changeNum});

  final double num;
  final Function changeNum;

  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(num.toString(), key: const Key('W3Value')),
        IconButton(
          onPressed: () => changeNum(1.0),
          icon: const Icon(Icons.add),
          key: const Key('W3Add'),
        ),
        IconButton(
            onPressed: () => changeNum(-1.0),
            icon: const Icon(Icons.remove),
            key: const Key('W3Sub'))
      ],
    );
  }
}
