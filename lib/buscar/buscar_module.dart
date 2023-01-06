import 'package:burguer_app/buscar/ui/buscar_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BuscarModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child:(_, args) => const BuscarPage()),
  ];
}
