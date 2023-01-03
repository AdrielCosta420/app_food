
import 'package:burguer_app/report%20errors/ui/reportar_erro_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ReportModule extends Module{
  @override
  List<Module> get imports => [];


  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ReportarErroPage()),
  ];
}