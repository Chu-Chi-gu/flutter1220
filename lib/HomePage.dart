import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'blueToothScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _MSHomePage createState() => _MSHomePage();
}
class _MSHomePage extends State<HomePage> {
  int index=0;
  List<Widget> page = [
    Container(color: Colors.red),
    Container(color: Colors.yellow),
    blueToothPage(),
    Container(color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonNavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (int idx) {
            setState(() {
              index = idx;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('ADD', style: TextStyle(color: Colors.black87)) ),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('ACCOUNT', style: TextStyle(color: Colors.black87))  ),
            BottomNavigationBarItem(icon: Icon(Icons.close),title: Text('CLOSE', style: TextStyle(color: Colors.black87)) ),
            BottomNavigationBarItem(icon: Icon(Icons.build),title: Text('BUILD', style: TextStyle(color: Colors.black87)) )
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black12),

      body: page[index],


    );
  }
}