import 'package:burguer_app/home/ui/login_page.dart';
import 'package:burguer_app/home/ui/opcao_page.dart';
import 'package:burguer_app/home/ui/perfil_page.dart';
import 'package:burguer_app/home/ui/reserva_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const ReservaPage(),
    );
  }
}
