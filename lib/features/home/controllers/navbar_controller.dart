import 'package:get/get.dart';

class NavbarController extends GetxController {
  int _index = 0;
  int get index => _index;

  void changeIndex(int newIndex) {
    _index = newIndex;
    update();
  }
}
