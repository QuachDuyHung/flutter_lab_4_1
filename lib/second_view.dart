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
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Go back first screen!'),
                textColor: Colors.white,
                color: Colors.green),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: Text('Detail View'),
                textColor: Colors.white,
                color: Colors.red)
          ],
        ),
      ),
    );
  }
}
