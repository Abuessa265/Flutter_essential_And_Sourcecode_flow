import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      home: const Home(),
      theme: ThemeData(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery এর মাধ্যমে ডিভাইস এর স্ক্রিন এর সাইজ,ওয়িথ অরিয়েন্টেশন ইত্যাদি জানা জাই
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).displayFeatures);

    print(MediaQuery.displayFeaturesOf(context));
    print(MediaQuery.sizeOf(context));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
        //wrap এটি row এর মোত কাজ করে কিন্তু row সেম লাইন এ জাইগা শেষ হলে নিচের লাইন থেকে স্টার্ট করতে পারে না কিন্তু wrap এটি পারে
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 10,
          children: [
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
          ],
        ),
      ),
    );
  }
}
