import 'package:flutter/material.dart';
import 'package:flutter_sourch_code_flow/profile.dart';
import 'package:flutter_sourch_code_flow/settings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Setting();
                        },
                      ),
                    );
                  },
                  child: Text('Go to Setting')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(userName: 'Abu essa',),
                        )).then((value){
                          print(value);
                    });
                  },
                  child: Text('Go to Profile')),
            )
          ],
        ),
      ),
    );
  }
}
