import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signal/model/model.dart';
import 'package:signal/widget/widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        backgroundColor: Colors.grey[100].withOpacity(0.4),
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircleAvatar(
            child: Text('R'),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                icon: Icon(
                  Icons.camera_enhance_rounded,
                  color: Colors.black,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.edit_rounded,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ],
        ),
        middle: Text(
          'Signal',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: users
            .map((e) => MessageListView(
                  appUser: e,
                ))
            .toList(),
      ),
    );
  }
}

List<AppUser> users = [
  AppUser('Hermione Granger', 'female', '19-09-1979', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/hermione.jpeg'),
  AppUser('Ron Weasley', 'male', '01-03-1980', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/ron.jpg'),
  AppUser('Draco Malfoy', 'male', '05-06-1980', 'Slytherin',
      'http://hp-api.herokuapp.com/images/draco.jpg'),
  AppUser('Hermione Granger', 'female', '19-09-1979', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/hermione.jpeg'),
  AppUser('Ron Weasley', 'male', '01-03-1980', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/ron.jpg'),
  AppUser('Draco Malfoy', 'male', '05-06-1980', 'Slytherin',
      'http://hp-api.herokuapp.com/images/draco.jpg'),
  AppUser('Hermione Granger', 'female', '19-09-1979', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/hermione.jpeg'),
  AppUser('Ron Weasley', 'male', '01-03-1980', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/ron.jpg'),
  AppUser('Draco Malfoy', 'male', '05-06-1980', 'Slytherin',
      'http://hp-api.herokuapp.com/images/draco.jpg'),
  AppUser('Hermione Granger', 'female', '19-09-1979', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/hermione.jpeg'),
  AppUser('Ron Weasley', 'male', '01-03-1980', 'Gryffindor',
      'http://hp-api.herokuapp.com/images/ron.jpg'),
  AppUser('Draco Malfoy', 'male', '05-06-1980', 'Slytherin',
      'http://hp-api.herokuapp.com/images/draco.jpg'),
];
