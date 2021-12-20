import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  return runApp(MaterialApp(home: HomePage2(),));
}
class HomePage2 extends StatefulWidget {
  @override
  _MSHomePage2 createState() => _MSHomePage2();
}
class _MSHomePage2 extends State<HomePage2> {
  int index=0;
  List<Widget> page = [
    Container(color: Colors.red),
    Container(color: Colors.yellow),
    Container(color: Colors.greenAccent),
    _Page1()
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
class HomePage extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
          appBar: AppBar(
            title: Text('ButtonNavigationBar'),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.add, color: Colors.black87), title: Text('ADD') ),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.black87),title: Text('ACCOUNT')  ),
            BottomNavigationBarItem(icon: Icon(Icons.close, color: Colors.black87),title: Text('CLOSE') ),
            BottomNavigationBarItem(icon: Icon(Icons.build, color: Colors.black87),title: Text('BUILD') )
          ]),
    );
  }
}
class _Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('GO to pa'),
      onPressed: () {

      },
    );
  }
}
