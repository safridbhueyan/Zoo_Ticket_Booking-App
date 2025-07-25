import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/icons.dart';

class BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Positioned.fill(child: navigationShell),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white.withValues(alpha: 0.8),
                currentIndex: navigationShell.currentIndex,
                onTap: (index) => navigationShell.goBranch(index),
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: textTheme.labelMedium!.copyWith(
                  fontSize: 0,
                ),
                unselectedLabelStyle: textTheme.labelMedium!.copyWith(
                  fontSize: 0,
                ),
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      navigationShell.currentIndex == 0
                          ? AppIcons.activeHomeIcon
                          : AppIcons.homeIcon,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      navigationShell.currentIndex == 1
                          ? AppIcons.activeMapIcon
                          : AppIcons.mapIcon,
                    ),
                    label: "Map",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      navigationShell.currentIndex == 2
                          ? AppIcons.activeTicketIcon
                          : AppIcons.ticketIcon,
                    ),
                    label: "Ticket",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      navigationShell.currentIndex == 3
                          ? AppIcons.activeProfileIcon
                          : AppIcons.profileIcon,
                    ),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
