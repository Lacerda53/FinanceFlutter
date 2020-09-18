import 'package:flutter/material.dart';

import '../themes/styles.dart';

class NavMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 90,
            height: 35,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: [BoxShadow(color: Color(0xFFCDD1F3), blurRadius: 10)],
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Center(
              child: Text(
                "All",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 90,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Color(0xFFCDD1F3), blurRadius: 10)],
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Center(
              child: Text(
                "Income",
                style: TextStyle(color: secundaryColor),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 90,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Color(0xFFCDD1F3), blurRadius: 10)],
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Center(
              child: Text(
                "Expense",
                style: TextStyle(color: secundaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
