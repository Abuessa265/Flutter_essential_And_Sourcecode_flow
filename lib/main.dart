// Buttons(ElevatedButton, TextButton, IconButton, GestureDetector, InkWell)
// |  TextField | Container | Padding

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      // debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
//
// Column => Vertically
// Row => Horizontally

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Write whatever you want to show in screen
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Home screen',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.home_filled,
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Money has been transferred'),
                //     backgroundColor: Colors.green,
                //     duration: Duration(seconds: 1),
                //   ),
                // );
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Send money'),
                        content:
                            Text('Are you sure that you want to send money?'),
                        actions: [],
                      );
                    });
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(width: 2, color: Colors.green)),
                  textStyle:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
              onPressed: () {
                print('Pressed');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  Text('Press here'),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green,
                textStyle: TextStyle(fontSize: 24),
              ),
              onPressed: () {},
              child: Text(
                'TextButton',
              ),
            ),
            IconButton(
              onPressed: () {
                print('Tapped in icon button');
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.deepOrangeAccent,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('on tap detected');
              },
              onDoubleTap: () {
                print('Double tap detected');
              },
              onLongPress: () {
                print('Long pressed');
              },
              child: Column(
                children: [
                  Text('sdfsdfsd'),
                  Icon(Icons.add_circle),
                  Row(
                    children: [Text('This is a row')],
                  )
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.orange,
              radius: 20,
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                print('on tap detected');
              },
              onDoubleTap: () {
                print('Double tap detected');
              },
              onLongPress: () {
                print('Long pressed');
              },
              child: Column(
                children: [
                  Text('sdfsdfsd'),
                  Icon(Icons.add_circle),
                  Row(
                    children: [Text('This is a row')],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                // controller: TextEditingController(),
                // enabled: false,
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(fontSize: 24, color: Colors.orange),
                maxLength: 10,
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                    // label: Text('Email'),
                    labelText: 'Email',
                    labelStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 4, color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 4, color: Colors.orange),
                        borderRadius: BorderRadius.circular(16)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 4, color: Colors.red)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 4, color: Colors.grey)),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.add),
                    prefixIconColor: Colors.green,
                    // prefix: Column(
                    //   children: [
                    //     Icon(Icons.add),
                    //   ],
                    // ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    suffixIconColor: Colors.red
                    // suffix: Column(
                    //   children: [],
                    // )
                    ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.black, width: 2),

                  //আলাদা আলাদা কালার করতে হলে নিচের কোড এর মাধ্যমে  করতে হবে আর নিচের মাধ্যমে করতে হলে উপ্রের  borderRadius এটা বাদ দিতে হবে তানা হলে কাজ করবে না
                  // border: Border(
                  //   top: BorderSide(color: Colors.black, width: 3),
                  //   bottom: BorderSide(color: Colors.black, width: 2),
                  //   left: BorderSide(color: Colors.black, width: 2),
                  //   right: BorderSide(color: Colors.black, width: 2),
                  // ),
                  image: DecorationImage(
                    image: NetworkImage('images/abuessa.png'),
                    fit: BoxFit.cover,
                  ),

                  //boxShadow এটা ছায়া ছেট করে
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 5, //কতোটুকু জাইগাই ছড়িয়ে যাবে
                      blurRadius: 8,
                      offset:
                          Offset(0, 3), // 0,3 মানে হলো উপর থেকে নিচের দিকে ছায়া
                    ),
                    // BoxShadow(
                    //   color: Colors.pink.withOpacity(0.9),
                    //   spreadRadius: 5,
                    //   blurRadius: 8,
                    //   offset: Offset(0, 3), // changes position of shadow
                    // ),
                  ]),
              alignment: Alignment.center,
              child: Text(
                'Abuessa',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
