import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'splash.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Splash(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.green),
        ));
  }
}

/*
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.add)
        ],
      ),
      body: Center(
        child: Text(counter.toString(), style: TextStyle(
          fontSize: 48
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}*/

// Widget - 2 types
// Stateless Widget
// Stateful Widget
// State
