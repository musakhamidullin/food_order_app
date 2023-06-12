import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_app/product/cubit/product_cubit.dart';
import 'package:food_order_app/product/data/product_rep.dart';

import 'widgets/dish_card.dart';
import 'widgets/modal.dart';
import 'widgets/tab_button.dart';

@RoutePage()
class ProductPage extends StatefulWidget {
  const ProductPage({Key? key, required this.categoryName}) : super(key: key);

  final String categoryName;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late final ProductCubit cubit;

  static const _padding = 16.0;

  @override
  void initState() {
    super.initState();

    cubit = ProductCubit(ProductRepo());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.categoryName),
      ),
      body: BlocProvider(
        create: (_) => cubit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                return SizedBox(
                  height: 35,
                  child: ListView.separated(
                      padding: const EdgeInsets.only(left: _padding),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: _padding / 2,
                          ),
                      shrinkWrap: true,
                      itemCount: state.selectedTab.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final name = [...state.selectedTab.keys][index];
                        return TabButton(
                          onPressed: () {
                            context.read<ProductCubit>().selectCategory(name);
                          },
                          name: name,
                          isSelected: state.selectedTab[name]!.$2,
                        );
                      }),
                );
              },
            ),
            const SizedBox(
              height: _padding,
            ),
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                return Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.85,
                        crossAxisCount: 3,
                      ),
                      itemCount: state.dishes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return DishCard(dish: state.dishes[index], onSelected: () { 
                          Modal.showConfirmationDialog(context, state.dishes[index]);
                        },);
                      }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
