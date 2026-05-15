import 'package:bimashops/controllers/navigation_controller.dart';
import 'package:bimashops/view/home_screen.dart';
import 'package:bimashops/view/shopping_screen.dart';
import 'package:bimashops/view/wishlist_screen.dart';
import 'package:bimashops/view/account_screen.dart';
import 'package:bimashops/view/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = 
        Get.put(NavigationController());
        
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Obx(
          () => IndexedStack(
            key: ValueKey(navigationController.currentIndex.value),
            index: navigationController.currentIndex.value,
            children: const [
              HomeScreen(),
              ShoppingScreen(),
              WishlistScreen(),
              AccountScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
    );
  }
}