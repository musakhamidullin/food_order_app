import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_app/product/view/product.dart';
import 'package:food_order_app/router/router.dart';

import '../../core/widgets/appbar_location_avatar.dart';
import '../cubit/categories_cubit.dart';
import '../data/category_rep.dart';
import 'widgets/category_card.dart';

@RoutePage()
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  late final CategoriesCubit cubit;

  static const _padding = 16.0;
  static const _icon = 'assets/icons/location.svg';
  static const _avatar = 'assets/images/avatar.png';

  @override
  void initState() {
    super.initState();

    cubit = CategoriesCubit(CategoryRep());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(60),
      child: AppBarLocationAvatar()),
      body: BlocProvider(
          create: (_) => cubit,
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
              builder: (context, state) => ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        height: _padding,
                      ),
                  padding: const EdgeInsets.only(
                      left: _padding,
                      right: _padding,
                      top: _padding * 2,
                      bottom: _padding * 2),
                  itemCount: state.categories.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          context.router.push(ProductRoute(
                              categoryName: state.categories[index].name));
                        },
                        child: CategoryCard(
                          name: state.categories[index].name,
                          imagePath: state.categories[index].imagePath,
                        ),
                      )))),
    );
  }
}
