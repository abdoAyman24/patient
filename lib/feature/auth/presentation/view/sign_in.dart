import 'package:flutter/material.dart';
import 'package:patient/core/helper/build_app_bar.dart';
import 'package:patient/feature/auth/presentation/view/widget/sign_in_view.dart';

class SIgnIn extends StatelessWidget {
  const SIgnIn({super.key});
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SignInView(),
    );
  }
}
