import 'package:flutter/material.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_text_styles.dart';

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
    required this.header,
    required this.hint,
    required this.onSave,
    this.showSuffixIcon = false,
    required this.keyboardType,
  });
  final String header;
  final String hint;
  final ValueChanged onSave;
  final bool showSuffixIcon;
  final TextInputType keyboardType;

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  bool showPasword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.header, style: AppText.semiBold16),
          const SizedBox(height: 8),
          TextFormField(
            onChanged: widget.onSave,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Field is Empty ';
              }
              return null;
            },
            style: TextStyle(color: Colors.white),
            keyboardType: widget.keyboardType,
            obscureText: !widget.showSuffixIcon
                ? false
                : showPasword
                ? false
                : true,
            decoration: InputDecoration(
              fillColor: AppColor.textFormColor,
              suffixIcon: widget.showSuffixIcon
                  ? IconButton(
                      onPressed: () {
                        showPasword = !showPasword;
                        setState(() {});
                      },
                      icon: Icon(
                        showPasword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                    )
                  : null,
              hint: Text(
                widget.hint,
                style: AppText.regular13.copyWith(color: AppColor.greyText),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
