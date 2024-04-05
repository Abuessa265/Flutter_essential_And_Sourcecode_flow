//stateful widget introduction

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});


  int counter=0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Home'),
       leading: Icon(Icons.home),
       actions: [
         Icon(Icons.add),
       ],
     ),
     body: Center(
       child: Text(counter.toString(),style: TextStyle(
         fontSize: 40,
       ),),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         counter++;
         print(counter);
       },
       child: Icon(Icons.add),
     ),
   );
  }

}