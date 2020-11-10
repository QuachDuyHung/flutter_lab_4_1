import 'package:flutter/material.dart';
import 'selection_view.dart';

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
                  Navigator.pushNamed(context, '/second');
                },
                textColor: Colors.white,
                color: Colors.red),
            FlatButton(
                child: Text('Pass Argument screen'),
                onPressed: () {
                  Navigator.pushNamed(context, '/pass-argument');
                },
                textColor: Colors.white,
                color: Colors.purple),
            SelectionButton(),
            FlatButton(
                child: Text('Todo screen'),
                onPressed: () {
                  Navigator.pushNamed(context, '/todos');
                },
                textColor: Colors.white,
                color: Colors.pink),
          ],
        ),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        child: Text('Pick an option, any option!'),
        textColor: Colors.black,
        color: Colors.yellow);
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}
