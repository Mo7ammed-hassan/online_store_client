import 'package:animations/animations.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce_app_with_admin_panel/core/utils/app_data.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/my_cart_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/favorit/presentation/views/favorite_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/home_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class BuilderView extends StatefulWidget {
  const BuilderView({super.key});

  @override
  State<BuilderView> createState() => _BuilderViewState();
}

class _BuilderViewState extends State<BuilderView> {
  int currentIndex = 0;

  final List<Widget> _views = [
    const HomeView(),
    const FavoriteView(),
    const MyCartView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        duration: const Duration(seconds: 1),
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: _views[currentIndex],
      ),
      bottomNavigationBar: BottomNavyBar(
        itemCornerRadius: 10,
        selectedIndex: currentIndex,
        items: AppData.bottomNavyBarItems
            .map(
              (item) => BottomNavyBarItem(
                icon: item.icon,
                title: Text(item.title),
                activeColor: item.activeColor,
                inactiveColor: item.inActiveColor,
              ),
            )
            .toList(),
        onItemSelected: (value) {
          if (currentIndex != value) {
            setState(() {
              currentIndex = value;
            });
          }
        },
      ),
    );
  }
}
