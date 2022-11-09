import 'package:drawer_3d/app/core/theme/app_colors.dart';
import 'package:drawer_3d/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BodyView extends GetView<HomeController> {
  const BodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => controller.open(),
            );
          },
        ),
        title: const Text('Details title'),
      ),
      body: const Center(
        child: Text('Details body'),
      ),
    );
  }
}
