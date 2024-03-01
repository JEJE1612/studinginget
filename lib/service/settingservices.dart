import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPref;
  Future<SettingServices> init() async {
    sharedPref = await SharedPreferences.getInstance();
    return this;
  }
}
