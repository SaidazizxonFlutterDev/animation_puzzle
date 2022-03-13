import 'package:animation_puzzle/provider/grid_item_provider.dart';
import 'package:animation_puzzle/provider/signIn_ff_provider.dart';
import 'package:animation_puzzle/route/my_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => VisibilityPasswordProvider()),
        ChangeNotifierProvider(create: (_) => GridItemProvider()),
      ],
      child: const MyApp(),
    ),
  );
 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puzzle',
      theme: ThemeData.light(),
      initialRoute: '/home',
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}
