import 'package:finance_mobile/controllers/overviews.controller.dart';
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
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Container(
            child: Observer(
              builder: (context) {
                final list = _controller.listOverview;
                return list != null
                    ? ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Text(list[index].description);
                        },
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
