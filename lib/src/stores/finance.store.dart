import 'package:mobx/mobx.dart';
part 'finance.store.g.dart';

class FinanceStore = _FinanceStoreBase with _$FinanceStore;

abstract class _FinanceStoreBase with Store {
  
  @observable
  Finance finance;

  @action 
  fetchFinance(){}

  Future<Finance> loadFinance() async {
    try{
      final response = await ();
      var decodeJson = jsonDecode(response.body);
      return Finance.fromJson(decodeJson);
    }
  }
}

//flutter packages pub run build_runner build
//flutter packages pub run build_runner watch