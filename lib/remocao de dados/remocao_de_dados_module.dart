
import 'package:burguer_app/remocao%20de%20dados/ui/remover_dados_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RemocaoDeDadosModule extends Module{
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const RemoverDadosPage()),
  ];
}