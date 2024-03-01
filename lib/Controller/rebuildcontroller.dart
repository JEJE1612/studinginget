import 'package:get/get.dart';

class RebuildController extends GetxController {
  int count1 = 0;
  int count2 = 0;
  void incrementone() {
    count1++;
    update();
  }

  void incrementTwo() {
    count2++;
    update();
  }

  void decrementone() {
    count1--;
    update();
  }

  void decrementtwo() {
    count2--;
    update();
  }

  int get sum => count1 + count2;
}
