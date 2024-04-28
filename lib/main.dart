//Sizer | ResponsiveBuilder | Device Preview

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const Home(),
      theme: ThemeData(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              width: 100,
              color: Colors.red,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              width: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 100,
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 400,
            child: FractionallySizedBox(
              heightFactor: 0.8,
              widthFactor: 0.6,
              child: Container(
                color: Colors.cyan,
              ),
            ),
          ),
          // AspectRatio(
          //   aspectRatio: 16 / 5,
          //   child: Container(color: Colors.red),
          // )
        ],
      ),
    );
  }
}
