import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? router) {
   // if (sharedpref!.getString("id") != null)
      return const RouteSettings(name: "/");
    /*
  يوجد كذا دور 
    if (sharedpref!.getString("role") == "user") return const RouteSettings(name: "/home");
  
    if (sharedpref!.getString("role") == "Admin") return const RouteSettings(name: "/admin");
  
  int?get priority => super.priority;
  
  
   */
  }
}
