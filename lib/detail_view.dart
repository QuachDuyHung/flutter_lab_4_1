import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.pushNamed(context, '/second');
            },
            child: Text('Go back second screen!'),
            textColor: Colors.white,
            color: Colors.red),
      ),
    );
  }
}
