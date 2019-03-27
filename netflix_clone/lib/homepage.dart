import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomeView()
    );
  }
}
class HomeView extends StatelessWidget {

  TextStyle topMenuStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600);
  TextStyle buttonInfoStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 10, color: Colors.white, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.red,
        child: Center(
          child: ListView(
          children: <Widget>[
            Container(
              height: 500,
              color: Colors.blue, // we can change to be backgroundimage instead
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Series', style: topMenuStyle,),
                        Text('Films', style: topMenuStyle),
                        Text('My List', style: topMenuStyle)
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.add, color: Colors.white, size: 30),
                              Text('My List', style: buttonInfoStyle,)
                            ],
                          ),
                          onPressed: () {

                          },
                        ),
                        FlatButton(
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.play_arrow
                              ),
                              Text("Play")
                            ],
                          ),
                          onPressed: () {

                          },
                        ),
                        FlatButton(
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.info, color: Colors.white, size: 30,),
                              Text('Info', style: buttonInfoStyle,)
                            ],
                          ),
                          onPressed: () {

                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
      ),
        )
    );
  }
}
