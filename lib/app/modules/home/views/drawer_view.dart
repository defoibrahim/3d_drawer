import 'package:drawer_3d/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/drawer_item.dart';
import '../controllers/home_controller.dart';

class DrawerView extends GetView<HomeController> {
  const DrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMainColor,
      width: 255,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            buildHeader(),
            buildDrawerItem(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() => Column(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/demon.jpg',
              height: 120,
              width: 120,
            ),
          ).paddingOnly(top: 16, left: 16, right: 16),
          const SizedBox(height: 8),
          const Text(
            'Dafallah Ibrahim',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ).paddingOnly(top: 8, left: 16, right: 16, bottom: 16),
        ],
      );

  Widget buildDrawerItem() => Column(
        children: DrawerItem.all
            .map(
              (item) => ListTile(
                onTap: () {
                  controller.close();
                },
                title: Text(
                  item.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                leading: Icon(item.icone, color: Colors.white),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              ),
            )
            .toList(),
      );
}
