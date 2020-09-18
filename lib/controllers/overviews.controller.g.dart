// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overviews.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OverviewController on _OverviewControllerBase, Store {
  final _$listOverviewAtom = Atom(name: '_OverviewControllerBase.listOverview');

  @override
  ObservableList<Overview> get listOverview {
    _$listOverviewAtom.reportRead();
    return super.listOverview;
  }

  @override
  set listOverview(ObservableList<Overview> value) {
    _$listOverviewAtom.reportWrite(value, super.listOverview, () {
      super.listOverview = value;
    });
  }

  final _$loadOverviewsAsyncAction =
      AsyncAction('_OverviewControllerBase.loadOverviews');

  @override
  Future loadOverviews() {
    return _$loadOverviewsAsyncAction.run(() => super.loadOverviews());
  }

  @override
  String toString() {
    return '''
listOverview: ${listOverview}
    ''';
  }
}
