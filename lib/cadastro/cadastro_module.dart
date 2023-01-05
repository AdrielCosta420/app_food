import 'package:burguer_app/cadastro/ui/cadastro_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './cadastro_controller.dart';

class CadastroModule extends Module {
    @override
    final List<Bind> binds = [
      Bind.lazySingleton((i) => CadastroController()),
    ];
 
    @override
    final List<ModularRoute> routes = [
      ChildRoute('/', child: (_, args) => const CadastroPage()),
    ];
 
}