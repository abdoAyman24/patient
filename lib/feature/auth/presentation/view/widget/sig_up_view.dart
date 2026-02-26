import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_text_styles.dart';
import 'package:patient/core/widget/custom_button.dart';
import 'package:patient/core/widget/custom_text_form.dart';
import 'package:patient/feature/auth/presentation/view/widget/custom_birth_date_picker.dart';
import 'package:patient/feature/auth/presentation/view/widget/custom_phone_number.dart';
import 'package:patient/feature/auth/presentation/view/widget/sign_in_view_header.dart';
import 'package:patient/generated/l10n.dart';

class SigUpView extends StatelessWidget {
  const SigUpView({super.key});

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
                header: S.of(context).signUpHeader,
                body: S.of(context).signUpSubTitle,
              ),
              CustomTextForm(
                header: S.of(context).signUpNameTextFormHeader,
                hint: S.of(context).signUpNameTextFormHint,
                onSave: (value) {},
                keyboardType: TextInputType.name,
              ),
              CustomTextForm(
                header: S.of(context).signUpEmailTextFormHeader,
                hint: S.of(context).signUpEmailTextFormHint,
                onSave: (value) {},
                keyboardType: TextInputType.emailAddress,
              ),

              CustomBirthDayWidget(
                header: S.of(context).signUpBirthDayTextFormHeader,
                initialDate: DateTime(2000, 1, 1),
                onDateSelected: (date) {
                  log('Selected Date: $date');
                },
              ),

              CustomTextForm(
                header: S.of(context).signUpPasswordTextFormHeader,
                hint: S.of(context).signUpPasswordTextFormHint,
                onSave: (value) {},
                keyboardType: TextInputType.visiblePassword,
                showSuffixIcon: true,
              ),

              PhoneNumberInput(
                header: S.of(context).signUpPhoneNumberTextFormHeader,
                hint: S.of(context).signUpPhoneNumberTextFormHint,
              ),
              CustomButton(
                text: S.of(context).signUpButtom,
                onTap: () {
                 
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).haveAnAccount, style: AppText.regular16),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      S.of(context).signIn,
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
