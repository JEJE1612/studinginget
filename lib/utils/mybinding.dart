import 'package:get/get.dart';
import 'package:getx/Controller/homcontroller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomController());
  }
}
