
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:zido/localization/app_localizations.dart';
import 'package:zido/localization/constains.dart';
import 'package:zido/resources/app_color.dart';
import 'package:zido/screens/home_screen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;


  List<Widget> pages = [
    HomeScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white70,
      body: pages[pageIndex],
      bottomNavigationBar: FloatingNavbar(
margin: EdgeInsets.all(0),
        currentIndex: pageIndex,
       backgroundColor: AppColor.White,
       selectedItemColor: AppColor.Moov,
       unselectedItemColor: AppColor.Black,
       onTap:(index) => setState(() =>   pageSelector(index)),

        items: [
          FloatingNavbarItem(icon: Icons.home, title: AppLocalizations.of(context)!.translate(KHome)!),
          FloatingNavbarItem(icon: Icons.shopping_cart, title: AppLocalizations.of(context)!.translate(Kbuy)!),
          FloatingNavbarItem(icon: Icons.add_circle_outline, title: AppLocalizations.of(context)!.translate(KSell)!),
          FloatingNavbarItem(icon: Icons.account_circle, title: AppLocalizations.of(context)!.translate(KAccount)!),

        ],
      ),
    );
  }
  void pageSelector(int value) {
    pageIndex = value;
  }
}
