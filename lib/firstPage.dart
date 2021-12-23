import 'package:flutter/material.dart';
import 'package:my_app_01/HomePage.dart';
class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
            "assets/IMG/holtek.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60, right: 5, left: 5, bottom: 10),
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/IMG/holtek_logo.png'),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              SizedBox(
                height: 50,
                width: 1000,
                /*child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),*/
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: 100,
                    /*child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),*/
                  ),
                  Container(
                    height: 200,
                    width: 220,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Text(
                            '塗料調配器 b-03',
                            style: TextStyle(fontSize: 28, color:Color.fromRGBO(228, 240, 208, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Text(
                            '組長：鍾奇志',
                            style: TextStyle(fontSize: 20, color:Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Text(
                            '組員：周偉恆',
                            style: TextStyle(fontSize: 20, color:Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:Text(
                            '組員：林保欽',
                            style: TextStyle(fontSize: 20, color:Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(right: 150),
                child: RaisedButton(
                    color: Colors.white,
                    child: Text('進入', style: TextStyle(fontSize: 30),),
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.blueGrey, width: 5)
                    ),
                    onPressed:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(), maintainState: false
                          )
                      );
                    }
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
  Jump() {


  }

}