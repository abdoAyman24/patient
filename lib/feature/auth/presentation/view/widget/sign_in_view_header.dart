import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_icon.dart';
import 'package:patient/core/utils/app_text_styles.dart';

class SignInViewHeader extends StatelessWidget {
  const SignInViewHeader({super.key, required this.header, required this.body});
  final String header;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SvgPicture.asset(Assets.imagesOnBordingTitle, height: 10.h),
        const SizedBox(height: 15),
        SizedBox(
          width: 150.w,
          child: Text(header, style: AppText.bold28),
        ),
        const SizedBox(height: 15),
        Text(body, style: AppText.regular13.copyWith(color: AppColor.greyText)),
        const SizedBox(height: 15),
      ],
    );
  }
}
