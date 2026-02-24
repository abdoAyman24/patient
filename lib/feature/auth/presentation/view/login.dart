import 'package:flutter/material.dart';
import 'package:patient/core/helper/build_app_bar.dart';
import 'package:patient/feature/auth/presentation/view/widget/login_view.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(tilte: 'Login'),
      body: LoginView(),
    );
  }
}
