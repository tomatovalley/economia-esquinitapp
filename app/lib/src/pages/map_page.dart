import 'package:abarrotify/src/widgets/appbar.dart';
import 'package:abarrotify/src/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  static String id = 'map_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        icon: Icons.gps_fixed_outlined,
        onTap: () {},
      ),
      drawer: CustomDrawer(),
      body: Container(
        height: double.infinity,
        child: Image.asset(
          'assets/map.png',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
