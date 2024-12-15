import 'package:flutter/material.dart';

class LanguageNotifier extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void changeLanguage() {
    _locale =
        _locale == const Locale('en') ? const Locale('gu') : const Locale('en');
    notifyListeners();
  }
}
