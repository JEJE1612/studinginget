import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/pagefour.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagethree.dart';
import 'package:getx/view/pagetwo.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageOne())); ==   Get.to(PageOne());
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>PageOne() )); == Get.off(PageOne());
                    //
                    Get.to(PageOne());
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("page one"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(PageTwo());
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("page two"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(PageThree());
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("page three"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(PageFour());
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("page four"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("login "),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    // sharedpref!.setString("id","1");
                    Get.to(PageThree());
                    /*  Get.defaultDialog(
                      content: ,
                      title: ""
                      ,
                      middleText: "",titleStyle: TextStyle(),

                     middleTextStyle: TextStyle(),
                     textCancel: "",
                     textConfirm: "",
                     onConfirm: (){

                     },
                     onCancel: (){

                     }
                    );*/
                    /*  Get.snackbar(
                      "title",
                      "message",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: ,

                    );*/
                   // Get.bottomSheet(Column());

                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("login"),
                ),
              )
            ],
          )),
    );
  }
}
