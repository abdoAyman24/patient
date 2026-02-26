import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient/core/utils/app_color.dart';
import 'package:patient/core/utils/app_text_styles.dart';

class CustomBirthDayWidget extends StatefulWidget {
  final DateTime? initialDate;
  final ValueChanged<DateTime> onDateSelected;
  final String header;
  const CustomBirthDayWidget({
    super.key,
    this.initialDate,
    required this.onDateSelected,
    required this.header,
  });

  @override
  State<CustomBirthDayWidget> createState() => _CustomBirthDayWidgetState();
}

class _CustomBirthDayWidgetState extends State<CustomBirthDayWidget> {
  DateTime? selectedDate;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
    _controller = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (selectedDate != null) {
      _controller.text = _formatDate(selectedDate!);
    }
  }

  String _formatDate(DateTime date) {
    final locale = Localizations.localeOf(context).languageCode;
    return DateFormat('dd/MM/yyyy', locale).format(date);
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime(now.year - 20),
      firstDate: DateTime(now.year - 100),
      lastDate: now,
      locale: Localizations.localeOf(context),
      builder: (context, child) {
        // نخلي الـ datepicker يتبع ألوان الـ AppTheme
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.dark(
              primary: Theme.of(context).primaryColor,
              onPrimary: Colors.white,
              surface: Theme.of(context).colorScheme.surface,
              onSurface: Colors.white,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
        _controller.text = _formatDate(date);
      });
      widget.onDateSelected(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.header, style: AppText.semiBold16),
        const SizedBox(height: 8),
        TextFormField(
          controller: _controller,
          readOnly: true,
          style: theme.textTheme.bodyLarge,
          decoration: InputDecoration(
            hintText: 'DD/MM/YYYY',
            hintStyle: theme.inputDecorationTheme.hintStyle,
            filled: true,
            fillColor: theme.inputDecorationTheme.fillColor,
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_today, color: AppColor.iconColor),
              onPressed: _pickDate,
            ),
            border: theme.inputDecorationTheme.border,
            contentPadding: theme.inputDecorationTheme.contentPadding,
          ),
          onTap: _pickDate,
        ),
      ],
    );
  }
}
