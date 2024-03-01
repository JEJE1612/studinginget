import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MylocaleController extends GetxController {
  void changelang(String codeing) {
    Locale locale = Locale(codeing);
   
    Get.updateLocale(locale);
  }
}
// للترجمة بنعمل  text.tr