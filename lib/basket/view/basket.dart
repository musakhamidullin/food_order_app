import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_app/basket/view/widgets/counter.dart';
import 'package:food_order_app/core/cubit/basket_cubit.dart';

import '../../core/widgets/appbar_location_avatar.dart';
import '../../product/view/widgets/cached_net_image.dart';

@RoutePage()
class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  static const _padding = 16.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: _padding / 2),
        width: double.infinity,
        child: BlocBuilder<BasketCubit, BasketState>(
          builder: (context, state) {
            if (state.dishes.isEmpty) return const SizedBox.shrink();
            return ElevatedButton(
              onPressed: () {},
              child: Text('Оплатить ${state.totalPrice.toInt()} ₽',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: theme.textTheme.titleLarge?.fontSize)),
            );
          },
        ),
      ),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: AppBarLocationAvatar()),
      body: BlocBuilder<BasketCubit, BasketState>(
        builder: (context, state) {
          return ListView.separated(
            padding: const EdgeInsets.only(top: _padding),
            separatorBuilder: (context, index) => const SizedBox(
              height: _padding,
            ),
            itemCount: state.dishes.length,
            itemBuilder: (context, index) => ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(_padding / 4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    width: 60,
                    height: 60,
                    child: ImageNetwork(url: state.dishes[index].imageUrl)),
                title: Text(state.dishes[index].name),
                trailing: SizedBox(
                  width: 120,
                  child: DishCounterWidget(
                    onCounted: (value) {
                      final uDish = state.dishes[index].copyWith(count: value);

                      context.read<BasketCubit>().count(uDish);
                    },
                    dish: state.dishes[index],
                  ),
                )),
          );
        },
      ),
    );
  }
}
