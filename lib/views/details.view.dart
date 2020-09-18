import 'package:finance_mobile/controllers/overviews.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:finance_mobile/views/widgets/navmenu.widget.dart';
import 'themes/styles.dart';

const search = 'assets/icons/search.svg';
const letter = 'assets/icons/open-letter.svg';
const background = 'assets/images/background.png';
const background2 = 'assets/images/background2.png';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var store = new OverviewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
          color: secundaryColor,
        ),
        actions: [
          SvgPicture.asset(search),
          SizedBox(
            width: 20,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 3,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                        color: primaryColor),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: NavMenu(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Today",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Color(0xFFCDD1F3), blurRadius: 20)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: SvgPicture.asset(
                            letter,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, right: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Send",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "Sending Payment to Clients",
                                style: TextStyle(
                                    color: Color(0xFFA4A4A4),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\$320",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Image.asset(
                background2,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: FlatButton(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 18,
                    child: Center(
                      child: Text(
                        'See Details',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                color: primaryColor,
                padding: EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
