import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick And Morty APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ), // ThemeData
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ), // AppBar
        body: const Center(
          child: Text('Hello World'),
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}