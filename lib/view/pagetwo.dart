import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagethree.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                  onPressed: () {
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
                    Get.to(PageThree());
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("page three"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("back"),
                ),
              )
            ],
          )),
    );
  }
}
