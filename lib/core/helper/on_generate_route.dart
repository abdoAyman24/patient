import 'package:flutter/material.dart';
import 'package:patient/feature/auth/presentation/view/sign_in.dart';
import 'package:patient/feature/auth/presentation/view/sign_up.dart';
import 'package:patient/feature/on_bording/presentation/view/on_bording.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SIgnIn.routeName:
      return MaterialPageRoute(
        settings: RouteSettings(name: SIgnIn.routeName),

        builder: (context) => SIgnIn(),
      );
    case OnBording.routeName:
      return MaterialPageRoute(
        settings: RouteSettings(name: OnBording.routeName),

        builder: (context) => OnBording(),
      );
 case SignUp.routeName:
      return MaterialPageRoute(
        settings: RouteSettings(name: SignUp.routeName),

        builder: (context) => SignUp(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
