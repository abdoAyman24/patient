
import 'package:flutter/material.dart';
import 'package:patient/core/utils/app_icon.dart';
import 'package:patient/feature/auth/presentation/view/widget/social_media_widget.dart';

class SignInSocialMedia extends StatelessWidget {
  const SignInSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SocialMediaWidget(
       text: 'Continue with Google',
       imagePath: Assets.imagesGoogle,
     ),
     const SizedBox(height: 15),
     SocialMediaWidget(
       text: 'Continue with Facebook',
       imagePath: Assets.imagesFacebook,
     ),
    ],);
  }
}
