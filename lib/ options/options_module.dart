import 'package:burguer_app/%20options/ui/opcao_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OptionsModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const OpcaoPage()),
      ];
}
