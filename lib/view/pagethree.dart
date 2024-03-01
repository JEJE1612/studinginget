import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagetwo.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pagetwo"),
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
                    Get.to(PageTwo());
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text("page two"),
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
