import 'package:finance_mobile/views/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:finance_mobile/views/widgets/profilecard.widget.dart';
import 'package:finance_mobile/views/widgets/overviewlist.widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              child: Profile(),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        Text(
                          "Overview",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.notifications_none,
                          size: 22,
                          color: secundaryColor,
                        ),
                      ],
                    ),
                    Text(
                      "Sept 13, 2020",
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height / 2.7,
              child: Transations(),
            ),
          ],
        ),
      ),
    );
  }
}
