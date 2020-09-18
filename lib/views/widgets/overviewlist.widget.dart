import 'package:finance_mobile/controllers/overviews.controller.dart';
import 'package:finance_mobile/views/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Transations extends StatefulWidget {
  @override
  _TransationsState createState() => _TransationsState();
}

class _TransationsState extends State<Transations> {
  OverviewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = OverviewController();
    _controller.loadOverviews();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: () => _controller.loadOverviews(),
        color: primaryColor,
        child: Observer(
          builder: (context) {
            final list = _controller.listOverview;
            return list != null
                ? ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      // return Text(list[index].description);
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 1.1,
                              height: 75,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFFCDD1F3),
                                        blurRadius: 20)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/details',
                                        arguments: list[index].id);
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFE5E8F9),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15))),
                                            child: Icon(
                                              Icons.arrow_upward,
                                              size: 30,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 20, right: 2),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  list[index].type,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Text(
                                                  list[index].description,
                                                  style: TextStyle(
                                                      color: Color(0xFFA4A4A4),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "\$${list[index].value}",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      );
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.black12,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(primaryColor),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
