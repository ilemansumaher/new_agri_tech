import 'package:mobx/mobx.dart';
part 'count_product_controller.g.dart';

class CountrProductController = _CountrProductControllerBase
    with _$CountrProductController;

abstract class _CountrProductControllerBase with Store {
  @observable
  int count = 0;

  @action
  void inceriment() {
    count++;
  }

  @action
  void decriment() {
    if (count > 0) {
      count--;
    }
  }
}
