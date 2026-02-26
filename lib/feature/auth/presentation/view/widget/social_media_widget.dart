import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_text_styles.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key, required this.text, required this.imagePath,
  });
final String text ;
final String imagePath ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 13.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.greyText),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(imagePath),
              Text(text, style: AppText.regular16),
            ],
          ),
        ),
      ),
    );
  }
}
