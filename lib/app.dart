import 'package:finance_mobile/Views/themes/styles.dart';
import 'package:finance_mobile/views/home.view.dart';
import 'package:finance_mobile/views/login.view.dart';
import 'package:flutter/material.dart';

class Finance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance',
      theme: ThemeData(backgroundColor: bgColor),
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
      initialRoute: '/login',
    );
  }
}
