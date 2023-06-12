import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  final list = <BottomNavigationBarItem>[

  ];

  @override
  Widget build(BuildContext context) {
    int index = currentIndex;
    final theme = Theme.of(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/home.svg', color: 0 == index ? theme.primaryColor : Colors.grey),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/search.svg', color: 1 == index ? theme.primaryColor : Colors.grey
          ),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/basket.svg', color: 2 == index ? theme.primaryColor : Colors.grey),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/account.svg', color: 3 == index ? theme.primaryColor : Colors.grey),
          label: 'Профиль',
        ),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
      selectedFontSize: 14,
      unselectedFontSize: 14,
    );
  }
}
