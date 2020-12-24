import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets.dart';
import 'package:animate_icons/animate_icons.dart';

class MyApp extends StatefulWidget {
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static final Color color1 = Color(0xffffa883);
  static final Color color2 = Color(0xfffde3c8);
  static final Color color3 = Color(0xfffaf2e8);
  static final Color color4 = Color(0xff6fc7e1);

  Widget build(BuildContext context) {
    var padding2 = Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
      child: Text(
        'Here\'s my app to practice my skills',
        style: TextStyle(
          height: 2.0,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
    var textStyle = TextStyle(
      height: 2.0,
      fontSize: 16.0,
      color: Colors.grey[800],
    );
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: color1,
        accentColor: color1,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Demo app',
            style: TextStyle(fontSize: 20.0),
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(bottom: 20.0),
          children: <Widget>[
            padding2,
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                'Now I know how to use differet widgets and I\'m happy',
                style: textStyle,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              height: 300,
              child: Image.network(
                  "https://i.pinimg.com/564x/c6/63/72/c66372f9f9e2a88e6f02e3c385e3e860.jpg",
                  fit: BoxFit.cover),
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                'Now I know how to add images and it\'s great',
                style: textStyle,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              height: 300,
              child: Image.network(
                  "https://i.pinimg.com/564x/60/d9/3b/60d93beea93c832152a7ff867834bd81.jpg",
                  fit: BoxFit.cover),
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: RichText(
                  text: TextSpan(
                    text: 'You can tap on the center icon to change it!',
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 30.0,
                      color: Colors.black,
                      fontFamily: 'RobotoMono',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: color3,
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Toggle',
          onPressed: () {},
          child: AnimateIcons(
            startIcon: Icons.done,
            endIcon: Icons.done_outline,
            size: 30.0,
            onStartIconPress: () {
              print("Clicked on Add Icon");
              return true;
            },
            onEndIconPress: () {
              print("Clicked on Close Icon");
              return true;
            },
            duration: Duration(milliseconds: 500),
            clockwise: false,
            color: color2,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.supervisor_account),
                color: color2,
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.favorite),
                color: color2,
                onPressed: () {},
              ),
            ],
          ),
          color: color1,
        ),
      ),
    );
  }
}
