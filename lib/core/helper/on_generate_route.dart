

import 'package:flutter/material.dart';
import 'package:patient/feature/auth/presentation/view/login.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case Login.routeName:
      return MaterialPageRoute(
        settings: RouteSettings(name: Login.routeName),

        builder: (context) => Login(),
      );
  

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
