import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.isLoading = false,
    this.borderRadius=12,
  });
  final String text;
  final Function()? onTap;
  final bool isLoading;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 15.h,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text(text, style: AppText.regular16),
        ),
      ),
    );
  }
}
