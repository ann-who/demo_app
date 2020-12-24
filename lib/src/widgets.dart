import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 25.0,
      color: Color(0xff616161),
    );
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          child: RichText(
            text: TextSpan(
              text:
                  'This is a blank for learning how to create multipage application',
              style: textStyle,
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0x6fc7e1),
            image: DecorationImage(
              image: AssetImage("assets/images/header.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          title: Text('Contacts'),
          leading: FaIcon(FontAwesomeIcons.addressBook),
          onTap: () {
            print('My contacts');
          },
        ),
        ListTile(
          title: Text('To do'),
          leading: FaIcon(FontAwesomeIcons.checkSquare),
          onTap: () {
            print('My todos');
          },
        ),
        ListTile(
          title: Text('Channels'),
          leading: Icon(Icons.rss_feed),
          onTap: () {
            print('My channels');
          },
        ),
        ListTile(
          title: Text('Settings'),
          leading: Icon(Icons.settings),
          onTap: () {
            print('Settings opened');
          },
        ),
      ]),
    );
  }
}
