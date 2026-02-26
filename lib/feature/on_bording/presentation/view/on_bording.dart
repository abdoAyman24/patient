import 'package:flutter/material.dart';
import 'package:patient/feature/on_bording/presentation/view/widget/on_bording_view.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});
  static const String routeName = 'onBording';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBordingView(),
    );
  }
}
