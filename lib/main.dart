import 'package:animation_puzzle/route/my_route.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puzzle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/signIn',
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}

