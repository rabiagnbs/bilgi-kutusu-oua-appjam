

import 'package:bilgi_kutusu_oua_appjam/app/app.router.dart';
import 'package:bilgi_kutusu_oua_appjam/app/app_base_view_model.dart';

class TechnologySciencePageViewModel extends AppBaseViewModel {


  init(){}

  void navigateToHealthPage() {
    navigationService.navigateTo(Routes.healthPageView);
  }
}