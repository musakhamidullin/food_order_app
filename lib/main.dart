import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/cubit/basket_cubit.dart';
import 'core/theme.dart';
import 'router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasketCubit(),
      child: MaterialApp.router(
        theme: ThemeApp.get(),
        routerConfig: _appRouter.config(),
        builder: (context, child) {
          return child!;
        },
      ),
    );
  }
}
