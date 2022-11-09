import 'package:drawer_3d/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'body_view.dart';
import 'drawer_view.dart';
import 'dart:math' as math;

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: GestureDetector(
        onTap: controller.toggle,
        onHorizontalDragStart: controller.onDragStart,
        onHorizontalDragUpdate: controller.onDragUpdate,
        onHorizontalDragEnd: controller.onDragEnd,
        child: AnimatedBuilder(
          animation: controller.animationController,
          builder: (context, _) {
            return Stack(
              children: [
                Transform.translate(
                  offset: Offset(
                    controller.maxSlide.value *
                        (controller.animationController.value - 1),
                    0,
                  ),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, .001)
                      ..rotateY(
                        math.pi /
                            2 *
                            (1 - controller.animationController.value),
                      ),
                    alignment: Alignment.centerRight,
                    child: const DrawerView(),
                  ),
                ),
                Transform.translate(
                  offset: Offset(
                    controller.maxSlide.value *
                        controller.animationController.value,
                    0,
                  ),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, .001)
                      ..rotateY(
                        -math.pi / 2 * controller.animationController.value,
                      ),
                    alignment: Alignment.centerLeft,
                    child: const BodyView(),
                  ),
                ),
                Positioned(
                  top: 4.0 + MediaQuery.of(context).padding.top,
                  left: 
                      (controller.animationController.value *
                          controller.maxSlide.value) - 50,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: controller.toggle,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
