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
                padding: EdgeInsets.only(left: 20, right: 20),
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
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Stack(
                          children: [
                            Icon(
                              Icons.notifications_none,
                              size: 25,
                              color: secundaryColor,
                            ),
                            Positioned(
                              bottom: 13,
                              right: 1,
                              child: Container(
                                width: 9,
                                height: 9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Sept 18, 2020",
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
