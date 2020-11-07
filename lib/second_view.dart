import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
                textColor: Colors.white,
                color: Colors.red),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: Text('Detailview'),
                textColor: Colors.white,
                color: Colors.red)
          ],
        ),
      ),
    );
  }
}
