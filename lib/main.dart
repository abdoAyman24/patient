import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:patient/core/helper/cache_helper.dart';
import 'package:patient/core/helper/on_generate_route.dart';
import 'package:patient/core/service/service_locator.dart';
import 'package:patient/core/utils/AppTheme.dart';
import 'package:patient/feature/on_bording/presentation/view/on_bording.dart';
import 'package:patient/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  setUpGetIt();
  Intl.getCurrentLocale();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

//change app local
//  if (Intl.getCurrentLocale() == 'en') {
//                     MyApp.setLocale(context, const Locale('ar'));
//                   } else {
//                     MyApp.setLocale(context, const Locale('en'));
//                   }
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLocale(locale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void changeLocale(Locale locale) {
    _locale = locale;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(192, 245),
      builder: (context, child) {
        return MaterialApp(
          locale: _locale,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'Patient',
          theme: appTheme,
          initialRoute: OnBording.routeName,
          onGenerateRoute: onGenerateRoute,
        );
      },
    );
  }
}
