import 'package:finance_mobile/src/pages/themes/styles.dart';
import 'package:flutter/material.dart';
import 'src/pages/login.page.dart';

class Finance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance',
      theme: ThemeData(backgroundColor: bgColor),
      home: Login(),
    );
  }
}
