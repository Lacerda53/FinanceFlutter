import 'package:finance_mobile/models/overview.model.dart';
import 'package:finance_mobile/repositories/overview.repository.dart';
import 'package:mobx/mobx.dart';
part 'overviews.controller.g.dart';

class OverviewController = _OverviewControllerBase with _$OverviewController;

abstract class _OverviewControllerBase with Store {
  OverviewRepository _overviewRepository;

  _OverviewControllerBase() {
    _overviewRepository = OverviewRepository();
  }

  @observable
  ObservableList<Overview> listOverview;

  @action
  loadOverviews() async {
    listOverview =
        ObservableList<Overview>.of(await _overviewRepository.getAll());
  }
}
