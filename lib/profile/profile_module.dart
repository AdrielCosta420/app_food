
import 'package:burguer_app/profile/ui/perfil_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends Module{

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const PerfilPage()),
  ];
}