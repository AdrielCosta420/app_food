
import 'package:burguer_app/profile/ui/perfil_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends Module{
  @override
  List<Module> get imports => [];


  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PerfilPage()),
  ];
}