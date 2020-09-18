import 'package:finance_mobile/views/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const user = 'assets/images/user.png';
const menu = 'assets/icons/Menu.svg';
const options = 'assets/icons/options.svg';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top + 20,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Color(0xFFCDD1F3), blurRadius: 20)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(menu),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(options),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            user,
                            width: 95,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Hira Riaz",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "UX/UI Designer",
                          style: TextStyle(
                              color: secundaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "\$8900",
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Income",
                                    style: TextStyle(
                                        color: secundaryColor, fontSize: 13),
                                  ),
                                ],
                              ),
                              Container(
                                color: Color(0xFFE2E2E2),
                                width: 1,
                                height: 60,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "\$5500",
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Expense",
                                    style: TextStyle(
                                        color: secundaryColor, fontSize: 13),
                                  ),
                                ],
                              ),
                              Container(
                                color: Color(0xFFE2E2E2),
                                width: 1,
                                height: 60,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "\$890",
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lean",
                                    style: TextStyle(
                                        color: secundaryColor, fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
