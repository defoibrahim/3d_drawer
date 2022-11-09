
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../data/models/drawer_model.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  final maxSlide = 255.0.obs;
  RxBool canBeDragged = false.obs;

  RxBool flip = false.obs;

  double get slide => maxSlide.value * animationController.value;
  double get scale => 1 - (animationController.value * 0.3);
  double get minDragStartEdge => 60;
  double get maxDragStartEdge => maxSlide.value - 16;

  static final home = DrawerModel(
    title: 'Home',
    icone: FontAwesomeIcons.house,
  );
  static final explorer = DrawerModel(
    title: 'Explore',
    icone: Icons.explore,
  );
  static final favourites = DrawerModel(
    title: 'Favourites',
    icone: Icons.favorite,
  );
  static final setting = DrawerModel(
    title: 'Settings',
    icone: Icons.settings,
  );
  static final profile = DrawerModel(
    title: 'Profile',
    icone: FontAwesomeIcons.userLarge,
  );
  static final logout = DrawerModel(
    title: 'Logout',
    icone: Icons.logout,
  );

   final List<DrawerModel> all = [
    home,
    explorer,
    favourites,
    setting,
    profile,
    logout
  ];

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void toggle() => animationController.isDismissed ? open() : close();

  void close() => animationController.reverse();

  void open() => animationController.forward();

  void onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed &&
        details.globalPosition.dx < minDragStartEdge;
    bool isDragCloseFromRight = animationController.isCompleted &&
        details.globalPosition.dx > maxDragStartEdge;
    canBeDragged.value = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void onDragUpdate(DragUpdateDetails details) {
    if (canBeDragged.value) {
      double delta = details.primaryDelta! / maxSlide.value;
      animationController.value += delta;
    }
  }

  void onDragEnd(DragEndDetails details) {
    double kMinFlingVelocity = 365.0;
    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= kMinFlingVelocity) {
      double visualVelocity =
          details.velocity.pixelsPerSecond.dx / Get.size.width;

      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }
}
