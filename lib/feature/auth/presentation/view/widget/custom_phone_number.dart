import 'package:flutter/material.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_text_styles.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({super.key, required this.header, required this.hint});
  final String header;
  final String hint;


  @override
  State<PhoneNumberInput> createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  // قائمة رموز الدول (يمكن توسعتها)
  final List<CountryCode> countries = [
    CountryCode(name: 'United States', code: '+1', flag: '🇺🇸'),
    CountryCode(name: 'United Kingdom', code: '+44', flag: '🇬🇧'),
    CountryCode(name: 'Egypt', code: '+20', flag: '🇪🇬'),
    CountryCode(name: 'Germany', code: '+49', flag: '🇩🇪'),
  ];

  late CountryCode selectedCountry;

  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedCountry = countries[1]; // خلي القيمة الافتراضية UK 🇬🇧
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(widget.header, style: AppText.semiBold16),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: AppColor.textFormColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Dropdown لاختيار الدولة مع العلامة
                DropdownButtonHideUnderline(
                  child: DropdownButton<CountryCode>(
                    value: selectedCountry,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: countries.map((country) {
                      return DropdownMenuItem<CountryCode>(
                        value: country,
                        child: Row(
                          children: [
                            Text(
                              country.flag,
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(width: 8),
                            Text(country.code),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedCountry = newValue;
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(width: 12),

                Expanded(
                  child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration:  InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hint,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(
                        context,
                      ).inputDecorationTheme.hintStyle!.color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CountryCode {
  final String name;
  final String code;
  final String flag;

  CountryCode({required this.name, required this.code, required this.flag});
}
