import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabButton extends StatelessWidget {
  const TabButton(
      {Key? key,
      required this.isSelected,
      required this.name,
      required this.onPressed})
      : super(key: key);

  final String name;
  final bool isSelected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
        style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: isSelected
                ? MaterialStateProperty.all(theme.primaryColor)
                : MaterialStateProperty.all(Colors.grey[200])),
        onPressed: () => onPressed(),
        child: Text(
          name,
          style: TextStyle(color: !isSelected ? Colors.black : Colors.white),
        ));
  }
}
