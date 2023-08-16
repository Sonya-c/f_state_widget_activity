import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1({super.key, required this.num, required this.changeNum});

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
        Text(
          num.toString(),
          key: const Key('W1Value'),
        ),
        IconButton(
            onPressed: () => changeNum(0.1),
            icon: Icon(Icons.add),
            key: const Key('W1Add')),
        IconButton(
            onPressed: () => changeNum(-0.1),
            icon: Icon(Icons.remove),
            key: const Key('W1Sub'))
      ],
    );
  }
}
