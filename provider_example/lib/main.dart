import 'package:flutter/material.dart';
import 'package:provider_example/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/counter_provider.dart';

void main() {
  runApp(

    MultiProvider(
      providers: [
      ChangeNotifierProvider(
        create: (_)=> Counter())
    ],
    child: MyApp(),
    )


  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home()
        },
    );
  }
}
