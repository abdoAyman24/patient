import 'package:flutter/material.dart';
import 'package:patient/core/helper/build_app_bar.dart';
import 'package:patient/feature/auth/presentation/view/widget/sig_up_view.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static const String routeName = 'signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: SigUpView());
  }
}
