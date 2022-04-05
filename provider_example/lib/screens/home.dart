import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:provider_example/providers/counter_provider.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${context.watch<Counter>().count}')
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () =>  context.read<Counter>().increment(),
            child: Icon(Icons.add),
            ),
            FloatingActionButton(
            onPressed: () => context.read<Counter>().reset(),
            child: Icon(Icons.exposure_zero),
            ),
            FloatingActionButton(
            onPressed: () => context.read<Counter>().decrement(),
            child: Icon(Icons.remove),
            ),
        ],
      ),
    );
  }
}