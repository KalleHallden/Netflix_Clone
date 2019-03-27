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
        // color: Colors.red,
        child: Center(
          child: ListView(
          children: <Widget>[
            Container(
              height: 450,
              // color: Colors.blue,
              decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage("lib/assets/starwars1.jpg"),
                        fit: BoxFit.fill
                        ),
                    ), // we can change to be backgroundimage instead
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                         child: Image(
                          image: AssetImage("lib/assets/netflix.png"),
                        )
                        ),
                        FlatButton(
                          child: Text('Series', style: topMenuStyle,),
                        ),
                        FlatButton(
                          child: Text('Films', style: topMenuStyle,),
                        ),
                        FlatButton(
                          child: Text('My List', style: topMenuStyle,),
                        ),
                      ],
                    ),
                  ),
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
        )
    );
  }
}
