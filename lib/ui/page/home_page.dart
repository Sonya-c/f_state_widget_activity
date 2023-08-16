import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num = 0;

  void changeNum(double delta) {
    setState(() {
      num = num + delta;
      num = double.parse(num.toStringAsFixed(1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: () => {
                    setState(() {
                      num = 0;
                    })
                  },
              icon: Icon(Icons.refresh),
              key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(changeNum: changeNum, num: num),
              W2(
                num: num.remainder(1),
              ),
              W3(changeNum: changeNum, num: num)
            ],
          ),
        ],
      )),
    );
  }
}
