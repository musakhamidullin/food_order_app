import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.imagePath, required this.name})
      : super(key: key);

  static const _padding = 16.0;

  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        CachedNetworkImage(
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              value: progress.progress,
            ),
          ),
          imageUrl: imagePath,
        ),
        Positioned(
            top: _padding,
            left: _padding,
            child: Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: theme.textTheme.titleLarge?.fontSize),
            )),
      ],
    );
  }
}
