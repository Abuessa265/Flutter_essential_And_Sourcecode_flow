//wrap , LayoutBuilder ,OrientationBuilder

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          /*
          Flexible(
            //tight দিলে height কাজ করবে না জদি container ৩ টা থাকে তাহলে সমান ৩ ভাগে ভাগ করবে
            fit: FlexFit.tight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            //Expanded দিলে আর flexible দেওয়া লাগে না কারন Expanded এর মধ্যে flexible এর FlexFit.tight করা থাকে
            flex: 2,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          )
           */

          /*
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 500,
            child: FractionallySizedBox(
              heightFactor: 0.9,
              widthFactor: 0.5,
              child: Container(
                color: Colors.purple,
              ),
            ),

           */

          AspectRatio(
            aspectRatio: 16 / 5,
            child: Container(color: Colors.red),
          )
        ],
      ),
    );
  }
}
