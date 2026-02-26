import 'package:flutter/material.dart';
import 'package:patient/core/utils/app_color.dart';

class SignInDivider extends StatelessWidget {
  const SignInDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(color: AppColor.greyText, height: 1),
        ),
    
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('OR'),
        ),
        Expanded(
          child: Container(color: AppColor.greyText, height: 1),
        ),
    
        // Divider(),
      ],
    );
  }
}
