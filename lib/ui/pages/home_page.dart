import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot/controllers/home_page_controller.dart';
import 'package:iot/ui/widgets/buttons/power_button_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PowerButtonWidget(
          isPowerOn: false,
          onPressed: () => {},
        ),
      ),
    );
  }
}
