import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_app/core/cubit/basket_cubit.dart';

import '../../product_exports.dart';
import 'cached_net_image.dart';

class Modal {
  static showConfirmationDialog(BuildContext context, Dish dish) {
    const padding = 16.0;

    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        final theme = Theme.of(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: padding, vertical: padding * 4),
          child: Material(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(padding),
                            child: ImageNetwork(
                              url: dish.imageUrl,
                            )),
                      ),
                      const SizedBox(
                        height: padding / 2,
                      ),
                      Text(dish.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: theme.textTheme.titleLarge?.fontSize)),
                      RichText(
                          text: TextSpan(
                              style: theme.textTheme.titleMedium,
                              children: [
                            TextSpan(
                              text: '${dish.price.toInt()} ₽ ',
                            ),
                            TextSpan(
                                text: '· ${dish.weight.toInt()}г',
                                style: const TextStyle(color: Colors.grey))
                          ])),
                      const SizedBox(
                        height: padding / 2,
                      ),
                      Text(
                        dish.description,
                        style: theme.textTheme.titleMedium,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              context.read<BasketCubit>().add(dish);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: padding),
                              child: Text('Добавить в корзину',
                                  style: TextStyle(
                                      fontSize: theme
                                          .textTheme.titleMedium?.fontSize)),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline_rounded),
                        ),
                      ),
                      const SizedBox(
                        width: padding / 2,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
