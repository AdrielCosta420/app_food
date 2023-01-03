
import 'package:burguer_app/login/ui/login_page.dart';
import 'package:burguer_app/profile/ui/perfil_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module{

   @override
  List<Module> get bind => [];


  @override
  final List<Bind> binds = [
  ];


  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoginPage()),
    
  ];
}