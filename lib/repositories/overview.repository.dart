import 'dart:convert';
import 'package:finance_mobile/models/overview.model.dart';
import 'package:flutter/services.dart' show rootBundle;

class OverviewRepository {
  Future<List<Overview>> getAll() async {
    try {
      List<Overview> listOverviews = List();
      final response = await rootBundle.loadString('lib/data/data.json');
      var decodeJson = jsonDecode(response);
      decodeJson.forEach((item) => listOverviews.add(Overview.fromJson(item)));
      return listOverviews;
    } catch (error) {
      print(error);
      return null;
    }
  }
}
