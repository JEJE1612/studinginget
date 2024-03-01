import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/rebuildcontroller.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetX<RebuildController>(
            init: RebuildController(),
            builder: (controller) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "${controller.count1}",
                      style: Theme.of(context).textTheme.headlineLarge,
                    )),
                    Center(
                        child: Text(
                      "${controller.count2}",
                      style: Theme.of(context).textTheme.headlineLarge,
                    )),
                    Center(
                        child: Text(
                      "${controller.sum}",
                      style: Theme.of(context).textTheme.headlineLarge,
                    )),
                    MaterialButton(
                      onPressed: () {
                        controller.incrementone();
                      },
                      child: Text("add one"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        controller.incrementTwo();
                      },
                      child: Text("add two"),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("add one"),
                    )
                  ],
                )),
      ),
    );
  }
}
