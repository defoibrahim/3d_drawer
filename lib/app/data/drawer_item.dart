import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/drawer_model.dart';

class DrawerItem {
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
  );  static final logout = DrawerModel(
    title: 'Logout',
    icone: Icons.logout,
  );

  static final List<DrawerModel> all = [
    home,
    explorer,
    favourites,
    setting,
    profile,
    logout
  ];
}
