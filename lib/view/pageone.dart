import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/homcontroller.dart';

class PageOne extends StatefulWidget {
  const  PageOne({super.key});

  @override
  State< PageOne> createState() => _PageOneState();
}

class _PageOneState extends State< PageOne> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<HomController>(
          init: HomController(),
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 40,
                      ),
                      onPressed: () {
                        controller.increment();
                      },
                    ),
                  ),
                  Center(
                    child: Text("${controller.counter.value}")),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove,
                      ),
                      onPressed: () {
                        controller.decrement();
                        
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
