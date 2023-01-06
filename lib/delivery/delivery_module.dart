import 'package:burguer_app/delivery/ui/delivery_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DeliveryModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const DeliveryPage()),
  ];
}
