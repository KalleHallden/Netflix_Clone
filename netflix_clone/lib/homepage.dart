import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomeView(),
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
              height: 430,
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
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
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
                  ),
                  makePopularWidget("Popular on Netflix"),
                  makePopularWidget("Trending Now")
          ],
      ),
        )
    );
  }

  Widget makePopularWidget(String title) {
    return new Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 220,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(title, style: topMenuStyle),
              ]
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              padding: EdgeInsets.all(3),
              scrollDirection: Axis.horizontal,
              //shrinkWrap: true,
              children: makeContainers()
            ),
          )
        ],
      ),
    );
  }
  int counter = 0;
  List<Widget> makeContainers() {
    List<Container> movieList = [];
    for (int i = 0; i < 6; i++) {
      counter++;
      movieList.add(new Container(
        padding: EdgeInsets.all(5),
        height: 200,
        
        child: Image(
          image: AssetImage("lib/assets/" + counter.toString() + ".jpg"),
        ),
      ));
    }
    return movieList;
  }
}
