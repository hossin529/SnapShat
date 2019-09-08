import 'package:flutter/material.dart';
import 'package:snapchat/Descover.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Descover(),
      debugShowCheckedModeBanner: false,
    );
  }
}
