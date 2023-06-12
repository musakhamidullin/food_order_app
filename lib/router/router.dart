import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/product/view/product.dart';

import '../basket/view/basket.dart';
import '../categories/view/categories.dart';
import '../main/view/main.dart';
import '../profile/view/profile.dart';
import '../search/view/search.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  static const mainPath = 'mainPath';
  static const profilePath = 'profilePath';
  static const searchPath = 'searchPath';
  static const basketPath = 'basketPath';
  static const categoryPath = 'categoryPath';

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, path: '/', children: [
          AutoRoute(page: MainTab.page, path: mainPath, children: [
            AutoRoute(
              page: CategoriesRoute.page,
              path: '',
            ),
            AutoRoute(
              page: ProductRoute.page,
              path: '',
            ),
          ]),
          AutoRoute(
            page: BasketTab.page,
            path: basketPath,
            children: [
              AutoRoute(
                page: BasketRoute.page,
                path: '',
              ),
              RedirectRoute(path: '*', redirectTo: ''),
            ],
          ),
          AutoRoute(
            page: SearchTab.page,
            path: searchPath,
            children: [
              AutoRoute(
                page: SearchRoute.page,
                path: '',
              ),
              RedirectRoute(path: '*', redirectTo: ''),
            ],
          ),
          AutoRoute(
            page: ProfileTab.page,
            path: profilePath,
            children: [
              AutoRoute(
                page: ProfileRoute.page,
                path: '',
              ),
              RedirectRoute(path: '*', redirectTo: ''),
            ],
          ),
        ]),
      ];
}

@RoutePage(name: 'MainTab')
class MainTabScreen extends AutoRouter {
  const MainTabScreen({super.key});
}

@RoutePage(name: 'SearchTab')
class SearchScreen extends AutoRouter {
  const SearchScreen({super.key});
}

@RoutePage(name: 'BasketTab')
class BasketScreen extends AutoRouter {
  const BasketScreen({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileScreen extends AutoRouter {
  const ProfileScreen({super.key});
}
