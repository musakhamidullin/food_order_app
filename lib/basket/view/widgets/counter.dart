import 'package:flutter/material.dart';
import '../../../product/product_exports.dart';

class DishCounterWidget extends StatelessWidget {
  const DishCounterWidget(
      {super.key,
        required this.onCounted,
        required this.dish
      });

  final Function(int) onCounted;
  final Dish dish;

  static const double _padding = 16;

  static const double _iconSize = 16;

  static const double _inkWellSize = 25;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(_padding / 4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: _inkWellSize,
            width: _inkWellSize,
            child: InkWell(
                onLongPress: dish.count == 1
                    ? null
                    : () {
                  final uDish = dish.copyWith(count: 1);

                  onCounted(uDish.count);
                },
                borderRadius: BorderRadius.circular(24),
                onTap:() {
                  int count = dish.count;

                  count--;

                  final uDish = dish.copyWith(count: count);

                  onCounted(uDish.count);
                },
                child: const Icon(Icons.remove, size: _iconSize)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: _padding),
            child: Text('${dish.count}', style: theme.textTheme.titleMedium),
          ),
          SizedBox(
            height: _inkWellSize,
            width: _inkWellSize,
            child: InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: () {
                  int count = dish.count;

                  count++;

                  final uDish = dish.copyWith(count: count);

                  onCounted(uDish.count);
                },
                child: const Icon(Icons.add, size: _iconSize)),
          )
        ],
      ),
    );
  }
}