import 'package:burguer_app/%20options/options_module.dart';
import 'package:burguer_app/home/home_module.dart';
import 'package:burguer_app/login/login_module.dart';
import 'package:burguer_app/profile/profile_module.dart';
import 'package:burguer_app/report%20errors/report_module.dart';
import 'package:burguer_app/reserva/reserva_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/reserva', module: ReservaModule()),
    ModuleRoute('/perfil', module: ProfileModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/opcao', module: OptionsModule()),
    ModuleRoute('/report', module: ReportModule()),
   ];

}
