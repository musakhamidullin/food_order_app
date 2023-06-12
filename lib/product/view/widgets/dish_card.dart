import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../product_exports.dart';
import 'cached_net_image.dart';

class DishCard extends StatelessWidget {
  const DishCard({Key? key, required this.dish, required this.onSelected}) : super(key: key);

  final Dish dish;

  static const _padding = 16;
  static const _rectangleSize = 100.0;

  final Function() onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.all(_padding / 2),
            width: _rectangleSize,
            height: _rectangleSize,
            child: ImageNetwork(url: dish.imageUrl,)
          ),
          const SizedBox(height: _padding / 2,),
          SizedBox(width: 120, child: Text(dish.name, textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}
