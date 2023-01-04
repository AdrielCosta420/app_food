import 'package:flutter_modular/flutter_modular.dart';
import './cadastro_controller.dart';
import './cadastro_page.dart';

class CadastroModule extends Module {
    @override
    final List<Bind> binds = [
      Bind.lazySingleton((i) => CadastroController()),
    ];
 
    @override
    final List<ModularRoute> routes = [
      ChildRoute('/', child: (_, args) => CadastroPage()),
    ];
 
}