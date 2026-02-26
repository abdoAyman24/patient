// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  // skipped getter for the '-onbording' key

  /// `Streamline Your Clinic Day`
  String get onBordingWelcome {
    return Intl.message(
      'Streamline Your Clinic Day',
      name: 'onBordingWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Swift & Sure`
  String get onBordingWelcome2 {
    return Intl.message(
      'Swift & Sure',
      name: 'onBordingWelcome2',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  // skipped getter for the '-signIn' key

  /// `Sign in to your Account`
  String get signInHeader {
    return Intl.message(
      'Sign in to your Account',
      name: 'signInHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and password to log in`
  String get signInSubTitle {
    return Intl.message(
      'Enter your email and password to log in',
      name: 'signInSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get signInEmailTextFormHeader {
    return Intl.message(
      'Email',
      name: 'signInEmailTextFormHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Email`
  String get signInEmailTextFormHint {
    return Intl.message(
      'Enter your Email',
      name: 'signInEmailTextFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signInPasswordTextFormHeader {
    return Intl.message(
      'Password',
      name: 'signInPasswordTextFormHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Password`
  String get signInPasswordTextFormHint {
    return Intl.message(
      'Enter your Password',
      name: 'signInPasswordTextFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password ?`
  String get forgetPassword {
    return Intl.message(
      'Forgot Password ?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signInButtom {
    return Intl.message('Sign In', name: 'signInButtom', desc: '', args: []);
  }

  /// `Don't have an account? `
  String get dontHaveAccont {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAccont',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '-signUp' key

  /// `Sign up`
  String get signUpHeader {
    return Intl.message('Sign up', name: 'signUpHeader', desc: '', args: []);
  }

  /// `Create an account to continue!`
  String get signUpSubTitle {
    return Intl.message(
      'Create an account to continue!',
      name: 'signUpSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get signUpNameTextFormHeader {
    return Intl.message(
      'Full Name',
      name: 'signUpNameTextFormHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Name`
  String get signUpNameTextFormHint {
    return Intl.message(
      'Enter Your Name',
      name: 'signUpNameTextFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get signUpEmailTextFormHeader {
    return Intl.message(
      'Email',
      name: 'signUpEmailTextFormHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get signUpEmailTextFormHint {
    return Intl.message(
      'Enter Your Email',
      name: 'signUpEmailTextFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Set Password`
  String get signUpPasswordTextFormHeader {
    return Intl.message(
      'Set Password',
      name: 'signUpPasswordTextFormHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get signUpPasswordTextFormHint {
    return Intl.message(
      'Enter Your Password',
      name: 'signUpPasswordTextFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Birth of Date`
  String get signUpBirthDayTextFormHeader {
    return Intl.message(
      'Birth of Date',
      name: 'signUpBirthDayTextFormHeader',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Birth day`
  String get signUpBirthDayTextFormHint {
    return Intl.message(
      'Enter Your Birth day',
      name: 'signUpBirthDayTextFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get signUpPhoneNumberTextFormHeader {
    return Intl.message(
      'Phone Number',
      name: 'signUpPhoneNumberTextFormHeader',
      desc: '',
      args: [],
    );
  }

  /// `(454) 726-0592`
  String get signUpPhoneNumberTextFormHint {
    return Intl.message(
      '(454) 726-0592',
      name: 'signUpPhoneNumberTextFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get signUpButtom {
    return Intl.message('Register', name: 'signUpButtom', desc: '', args: []);
  }

  /// `Already have an account? `
  String get haveAnAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'haveAnAccount',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
