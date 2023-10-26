import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  BottomNavWidget({super.key});

  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (context, updatedIndex, _) {
          return BottomNavigationBar(
            currentIndex: updatedIndex,
            selectedItemColor: kyellowcolor,
            unselectedItemColor: kGreyColor,
            onTap: (newIndex) {
              selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined,
                      weight: 100, grade: -25, fill: 0),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined,
                      weight: 100, grade: -25, fill: 0),
                  label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, weight: 100, grade: -25, fill: 0),
                  label: "Profile"),
            ],
          );
        });
  }
}
