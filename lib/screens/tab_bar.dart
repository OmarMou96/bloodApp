import 'package:blood/screens/BloodInformation.dart';
import 'package:blood/screens/blood_stock/BloodStock.dart';
import 'package:blood/screens/home_screen.dart';
import 'package:blood/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  // final Color navigationBarColor = Colors.blue;
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.red,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: <Widget>[
              HomeScreen(),
              BloodCompatibility(),
              BloodStockScreen(),
              SettingsScreen(),
            ]),
        // Center(
        //   child: _widgetOptions.elementAt(_selectedIndex),
        // ),
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.ltr,
          child: WaterDropNavBar(
            bottomPadding: 10.0,
            backgroundColor: Colors.white,
            inactiveIconColor: Colors.grey,
            waterDropColor: Colors.red.shade700,
            onItemSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
              pageController.animateToPage(selectedIndex,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad);
            },
            selectedIndex: selectedIndex,
            barItems: <BarItem>[
              BarItem(
                filledIcon: Icons.home,
                outlinedIcon: Icons.home_outlined,
              ),
              BarItem(
                  filledIcon: Icons.water_drop,
                  outlinedIcon: Icons.water_drop_outlined),
              BarItem(
                filledIcon: Icons.bloodtype,
                outlinedIcon: Icons.bloodtype_outlined,
              ),
              BarItem(
                filledIcon: Icons.settings,
                outlinedIcon: Icons.settings_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
