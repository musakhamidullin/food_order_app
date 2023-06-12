import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarLocationAvatar extends StatelessWidget  {
  const AppBarLocationAvatar({Key? key}) : super(key: key);

  static const _padding = 16.0;
  static const _icon = 'assets/icons/location.svg';
  static const _avatar = 'assets/images/avatar.png';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                _icon,
                height: 36,
              ),
              const SizedBox(
                width: _padding / 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Saint-Petersburg'),
                  const SizedBox(
                    height: _padding / 4,
                  ),
                  Text(
                    '12 august, 2023',
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.black45),
                  ),
                ],
              )
            ],
          ),
          Image.asset(_avatar)
        ],
      ),
    );
  }
}
