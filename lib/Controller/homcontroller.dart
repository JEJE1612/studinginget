import 'package:get/get.dart';

class HomController extends GetxController {
  RxInt counter = 0.obs;
  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }

  @override
  void onInit() {
    //  ينفذ عند init
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // ينفذ عند الخروج من سكرين
    super.onClose();
  }
}
