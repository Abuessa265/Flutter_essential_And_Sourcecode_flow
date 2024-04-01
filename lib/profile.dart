import 'package:flutter/material.dart';
import 'package:flutter_sourch_code_flow/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key,required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,'returned with string');
                },
                child: Text('Back to home')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Setting()));
                },
                child: Text('Go to Setting'))
          ],
        ),
      ),
    );
  }
}