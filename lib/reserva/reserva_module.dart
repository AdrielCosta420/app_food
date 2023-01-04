
import 'package:burguer_app/reserva/ui/card_reserva_page.dart';
import 'package:burguer_app/reserva/ui/reserva_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ReservaModule extends Module{

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const ReservaPage()),
    ChildRoute('/cardReserva', child: (context, args) => const CardReservaPage()),
  ];
}