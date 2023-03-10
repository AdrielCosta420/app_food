import 'package:burguer_app/app_module.dart';
import 'package:burguer_app/app_widget.dart';
import 'package:burguer_app/login/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
