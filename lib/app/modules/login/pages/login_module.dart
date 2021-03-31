import 'package:flutter_modular/flutter_modular.dart';
import 'package:vigilanciapolicial/app/modules/login/pages/login_controller.dart';
import 'package:vigilanciapolicial/app/modules/shared/auth/auth_controller.dart';
import 'package:vigilanciapolicial/app/modules/shared/auth/repositories/auth_repository.dart';
import 'package:vigilanciapolicial/app/modules/shared/auth/repositories/auth_repository_interface.dart';
//import '../home/home_store.dart';

import 'login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    //Bind.lazySingleton((i) => HomeStore()),
    Bind<IAuthRepository>((i) => AuthRepository()),
    Bind.lazySingleton((i) => LoginController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, args) => LoginPage()),
  ];
}
