
import 'package:burguer_app/reserva/ui/card_reserva_page.dart';
import 'package:burguer_app/reserva/ui/reserva_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ReservaModule extends Module{
  @override
  List<Module> get imports => [];


  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ReservaPage()),
    ChildRoute('/cardReserva', child: (_, args) => const CardReservaPage()),
  ];
}