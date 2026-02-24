import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient/core/helper/cache_helper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:patient/core/helper/on_generate_route.dart';
import 'package:patient/core/utils/AppTheme.dart';
import 'package:patient/feature/auth/presentation/view/login.dart';
import 'package:patient/generated/l10n.dart';

void main() async {
  await CacheHelper.init();
  Intl.getCurrentLocale();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Patient',
      theme: AppTheme,
      initialRoute: Login.routeName,
      onGenerateRoute: onGenerateRoute,
      
    );
  }
}
