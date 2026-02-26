import 'package:flutter/material.dart';
import 'package:patient/core/utils/app_color.dart';

import 'package:patient/core/utils/app_text_styles.dart';
import 'package:patient/core/widget/custom_button.dart';
import 'package:patient/core/widget/custom_text_form.dart';
import 'package:patient/feature/auth/presentation/view/widget/sign_in_divider.dart';
import 'package:patient/feature/auth/presentation/view/widget/sign_in_social_media.dart';
import 'package:patient/feature/auth/presentation/view/widget/sign_in_view_header.dart';
import 'package:patient/generated/l10n.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignInViewHeader(
                header: S.of(context).signInHeader,
                body:S.of(context).signInSubTitle ,
              ),
              CustomTextForm(
                header: S.of(context).signInEmailTextFormHeader,
                hint: S.of(context).signInEmailTextFormHint,
                onSave: (value) {},
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 5),

              CustomTextForm(
                header: S.of(context).signInPasswordTextFormHeader,
                hint: S.of(context).signInPasswordTextFormHint,
                onSave: (value) {},
                keyboardType: TextInputType.visiblePassword,
                showSuffixIcon: true,
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    S.of(context).forgetPassword,
                    style: AppText.semiBold13.copyWith(
                      color: AppColor.greyText,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(text:S.of(context).signInButtom, onTap: () {}),
              const SizedBox(height: 10),

              const SignInDivider(),
              const SizedBox(height: 10),

              SignInSocialMedia(),
              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).dontHaveAccont, style: AppText.regular16),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      S.of(context).signUp,
                      style: AppText.medium18.copyWith(color: AppColor.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
