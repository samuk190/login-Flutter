import 'package:vigilanciapolicial/app//modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'middlewares/admin_guard.dart';
import 'modules/admin/admin_module.dart';
import 'modules/home/home_module.dart';
import 'modules/login/pages/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute(
      Modular.initialRoute,
      module: AdminModule(),
      //     guards: [AdminGuard()],
    ),
  ];
}
