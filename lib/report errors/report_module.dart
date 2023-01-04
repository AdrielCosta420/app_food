
import 'package:burguer_app/report%20errors/ui/reportar_erro_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ReportModule extends Module{

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const ReportarErroPage()),
  ];
}