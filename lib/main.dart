import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_cubit.dart';
import 'package:teste_cubiq/presenter/nav/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(_wrapProviders(const MyApp()));
}

Widget _wrapProviders(Widget child) {
  return BlocProvider<ChatCubit>(
    create: (context) => ChatCubit(),
    child: child,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cubiq teste',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(const Color(0xFFEAECF0)),
          trackColor: WidgetStateProperty.all(Colors.white),
          thickness: WidgetStateProperty.all(8.0),
          radius: const Radius.circular(8.0),
        ),
        fontFamily: 'Inter',
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
