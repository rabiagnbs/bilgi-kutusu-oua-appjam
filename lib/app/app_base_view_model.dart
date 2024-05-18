

import 'package:bilgi_kutusu_oua_appjam/core/di/get_it.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppBaseViewModel extends BaseViewModel {
  NavigationService navigationService =
      getIt<NavigationService>(); 


  ThemeMode themeMode = ThemeMode.system;

  init() {
  }
}
