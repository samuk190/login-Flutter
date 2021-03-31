import 'package:flutter_modular/flutter_modular.dart';

import 'admin_page.dart';

class AdminModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/admin', child: (_, args) => AdminPage()),
  ];
}
