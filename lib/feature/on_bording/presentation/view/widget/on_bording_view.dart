import 'package:flutter/material.dart';
import 'package:patient/core/utils/app_text_styles.dart';
import 'package:patient/core/widget/custom_button.dart';
import 'package:patient/feature/auth/presentation/view/sign_in.dart';
import 'package:patient/feature/auth/presentation/view/sign_up.dart';
import 'package:patient/feature/on_bording/presentation/view/widget/on_bording_image_view.dart';
import 'package:patient/generated/l10n.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnBordingImageView(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(S.of(context).onBordingWelcome, style: AppText.semiBold24),
              Text(S.of(context).onBordingWelcome2, style: AppText.semiBold24),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, SIgnIn.routeName);
                },
                text: S.of(context).signIn,
                borderRadius: 25,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, SignUp.routeName);
                },
                text: S.of(context).signUp,
                borderRadius: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
