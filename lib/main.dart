import 'package:flutter/material.dart';
import 'model/book.dart';
import 'screens/login.dart';
import '/utils/routes.dart';

import './screens/dashboard_screen.dart';
import './screens/nav.dart';
import 'screens/book_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
      routes: {
        bookDetailsScreen.routeName: (ctx) => bookDetailsScreen(),
        MyRoutes.homeRoute: (context) => nav(),
      },
    );
  }
}
