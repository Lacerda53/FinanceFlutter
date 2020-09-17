import 'package:flutter/material.dart';
import 'package:finance_mobile/src/widgets/profilecard.widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Profile(),
    );
  }
}
