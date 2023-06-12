import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router.dart';
import 'widgets/bottom_nav_bar.dart';


@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    var _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [MainTab(), SearchTab(), BasketTab(), ProfileTab()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);

            if (_currIndex == index) {
              context.router.popTop();
            }

            _currIndex = index;
          },
        );
      },
    );
  }
}