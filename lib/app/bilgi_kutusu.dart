import 'package:bilgi_kutusu_oua_appjam/app/app.router.dart';
import 'package:bilgi_kutusu_oua_appjam/app/app_base_view_model.dart';
import 'package:bilgi_kutusu_oua_appjam/core/di/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BilgiKutusu extends StatelessWidget {
  const BilgiKutusu({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation> [
      DeviceOrientation.portraitUp, // app only works in vertical mode
    ]);
    return  ViewModelBuilder<AppBaseViewModel>.reactive(
        viewModelBuilder: () => getIt<AppBaseViewModel>(), // singleton: 1 instance of AppBaseViewModel
        onViewModelReady: (viewModel) => viewModel.init(),
        builder: (context, viewModel, child) => MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorObservers: [StackedService.routeObserver],
      title: 'Nutrically',
      debugShowCheckedModeBanner: false,
    ));
  }
}