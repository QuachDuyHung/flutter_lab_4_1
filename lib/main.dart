import 'package:flutter/material.dart';
import 'first_view.dart';
import 'second_view.dart';
import 'detail_view.dart';
import 'animation_hero_view.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstView(),
      '/second': (context) => SecondView(),
      '/detail': (context) => DetailView(),
      '/animation-hero': (context) => MainScreen(),
      '/detail-animation-hero': (context) => DetailScreen(),
    },
  ));
}
