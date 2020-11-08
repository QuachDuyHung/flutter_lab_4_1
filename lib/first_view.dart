import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/animation-hero');
                },
                child: Text('Animaiton Hero'),
                textColor: Colors.white,
                color: Colors.blue),
            FlatButton(
                child: Text('Launch screen'),
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/second');
                },
                textColor: Colors.white,
                color: Colors.red),
          ],
        ),
      ),
    );
  }
}
