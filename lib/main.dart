import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/presenter/nav/router.dart';

void main() {
  runApp(_wrapProviders(const MyApp()));
}

Widget _wrapProviders(Widget child) {
  return MultiBlocProvider(
    providers: [],
    child: child,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cubiq teste',
      routerConfig: router,
    );
  }
}
