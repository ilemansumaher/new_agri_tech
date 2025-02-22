import 'package:mobx/mobx.dart';
part 'nav_bar_controller.g.dart';

class ButtomNavBarController = _ButtomNavBarControllerBase with _$ButtomNavBarController;

abstract class _ButtomNavBarControllerBase with Store {
  
  @observable
  int selectedIndex=0;

  @action
  onItemTapped(int index){
    selectedIndex=index;
  }
  
}