import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/auth_middleware.dart';
import 'package:getx/service/settingservices.dart';
import 'package:getx/utils/mybinding.dart';
import 'package:getx/view/home.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagethree.dart';
import 'package:getx/view/pagetwo.dart';

//SharedPreferences? sharedpref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //sharedpref = await SharedPreferences.getInstance();
  await initServices();
  runApp(const MyApp());
}

Future initServices() async {
  await Get.putAsync(() => SettingServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Home(),
      initialBinding: MyBinding(),
      locale: Get.deviceLocale,

      //routes:==getpages
      getPages: [
        GetPage(
            name: "/",
            page: () => Home(),
            binding: MyBinding(),
            middlewares: [AuthMiddleWare()]),
        GetPage(name: "/pageone", page: () => PageOne()),
        GetPage(name: "/pagetwo", page: () => PageTwo()),
        GetPage(name: "/pagethree", page: () => PageThree())
      ],
    );
  }
}


// عند تخصيصي  getbuilder لكل من 
//child ... بنعرف الcontroller in     namecontroller contoller = Get.put(namecontroller);
// namecontroller  controller = Get.put(namecontroller(), permanent:true ) ...>  يحفظ الداتا    create
 //namecontroller  controller =Get.lazyput(namecontroller()) ......>  بيتعرف في اذا احتجناه 
// namecontroller controller = Get.find(); ...> init 



// login 
// SharedPreferences sharedpref; 



