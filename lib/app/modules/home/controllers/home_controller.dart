import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
