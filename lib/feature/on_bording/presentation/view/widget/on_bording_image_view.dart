import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_icon.dart';

class OnBordingImageView extends StatelessWidget {
  const OnBordingImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, -0.00),
          end: Alignment(0.50, 1.00),
          colors: [AppColor.primary, AppColor.black],
        ),
        //border: Border.merge(Borde, b)
        border: Border.lerp(
          Border(bottom: BorderSide(width: 1.5, color: AppColor.black)),
          Border(bottom: BorderSide(width: 1.5, color: AppColor.greyText)),
          0.5,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        clipBehavior: Clip.none,

        children: [
          Positioned(
            top: 25.h,
            left: 20.w,
            child: SvgPicture.asset(Assets.imagesOnBordingImage1),
          ),
          Positioned(
            top: 60.h,
            left: 15.w,

            child: SvgPicture.asset(Assets.imagesOnBordingImage2),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -15,
            child: SvgPicture.asset(Assets.imagesOnBordingTitle, height: 30),
          ),
        ],
      ),
    );
  }
}
