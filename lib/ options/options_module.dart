
import 'package:burguer_app/%20options/ui/opcao_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OptionsModule extends Module{
  @override
  List<Module> get imports => [];


  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const OpcaoPage()),
  ];
}