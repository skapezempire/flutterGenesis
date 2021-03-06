import 'package:flutter/material.dart';
import 'package:todoapp/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      //darkTheme: ThemeData.dark(),
      //themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}
