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
              icon: Icon(Icons.menu),
              onPressed: () => controller.open(),
            );
          },
        ),
        title: Text('Details title'),
      ),
      body: Center(
        child: Text('Details body'),
      ),
    );
  }
}
