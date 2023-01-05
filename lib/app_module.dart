import 'package:burguer_app/%20options/options_module.dart';
import 'package:burguer_app/login/login_module.dart';
import 'package:burguer_app/profile/profile_module.dart';
import 'package:burguer_app/remocao%20de%20dados/remocao_de_dados_module.dart';
import 'package:burguer_app/report%20errors/report_module.dart';
import 'package:burguer_app/reserva/reserva_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/reserva', module: ReservaModule()),
    ModuleRoute('/perfil', module: ProfileModule()),
    ModuleRoute('/opcao', module: OptionsModule()),
    ModuleRoute('/report', module: ReportModule()),
    ModuleRoute('/remocao', module: RemocaoDeDadosModule()),
   ];

}
