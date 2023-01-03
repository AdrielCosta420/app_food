
import 'package:burguer_app/login/ui/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module{
  @override
  List<Module> get imports => [];


  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoginPage()),
  ];
}