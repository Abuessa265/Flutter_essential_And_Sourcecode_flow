
// ListView| GreedView|ScrollView

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
  List<String>studentList=[
    'Jahid',
    'Mohid',
    'Tahsin',
    'Tamal',
    'Jakaria'
  ];
  @override
  Widget build(BuildContext context) {
    // Write whatever you want to show in screen
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home screen', style: TextStyle(
            color: Colors.white
        ),),
        leading: Icon(Icons.home_filled, color: Colors.white,),
        actions: [
          IconButton(onPressed: () {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('Money has been transferred'),
            //     backgroundColor: Colors.green,
            //     duration: Duration(seconds: 1),
            //   ),
            // );
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text('Send money'),
                content: Text('Are you sure that you want to send money?'),
                actions: [

                ],
              );
            });
          }, icon: Icon(Icons.add)),
        ],
      ),
     /* body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
          ],
        ),
      ),
      */
      /*body: ListView(
        scrollDirection: Axis.horizontal,
          children: [
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
            Text('Abuessa'),
          ],

      ),
      */
      /*body: ListView.builder(
        itemCount: 100,
          itemBuilder: (context,index){
           return Text('${index+1}',style: TextStyle(fontSize: 20),);
          }
      ),*/

     /* body: ListView.builder(
        itemCount: studentList.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(studentList[index],style: TextStyle(
                    fontSize: 18
                  ),),
                  Divider()
                ],
              ),
            );
          }),*/
      /*
      body: ListView.separated(
          itemCount: studentList.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(studentList[index],style: TextStyle(
                  fontSize: 18
              ),),
            );
          },
        separatorBuilder: (context,index){
            return Divider(
              height: 32,
              thickness: 2,
              endIndent: 16,
              indent: 8,
              color: Colors.orange,
            );
        },
      ),
      */


      /*
        body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
        children: [
          Text('1'),
          Text('2'),
          Text('3'),
          Text('4'),
          Text('5'),
          Text('6'),
          Text('7'),
          Text('8'),
          Text('9'),
          Text('10'),
          Text('10'),
          Text('10'),
          Text('10'),
          Text('10'),
          Text('10'),
          Text('10'),
          Text('10'),
          Text('10'),
        ],
      ),
        */

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
                primary: false,
                itemCount: studentList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(studentList[index],style: TextStyle(
                            fontSize: 18
                        ),),
                        Divider()
                      ],
                    ),
                  );
                }
            ),
            GridView.builder(
              shrinkWrap: true,
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,childAspectRatio: 3,
                mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ),
                itemCount: 100,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Text('Roll - ${index+1}'),
                     //Text(studentList[index])
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}