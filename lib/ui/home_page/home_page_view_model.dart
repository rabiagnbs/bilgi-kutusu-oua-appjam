

import 'package:bilgi_kutusu_oua_appjam/app/app.router.dart';
import 'package:bilgi_kutusu_oua_appjam/app/app_base_view_model.dart';

class HomePageViewModel extends AppBaseViewModel {


  init(){}

  void navigateToHealthPage() {
    navigationService.navigateTo(Routes.healthPageView);
  }

  void navigateToEducationPage() {
    navigationService.navigateTo(Routes.educationPageView);
  }

  void navigateToHobbyFunPage() {
    navigationService.navigateTo(Routes.hobbyFunPageView);
  }

  void navigateToTechnologySciencePage() {
    navigationService.navigateTo(Routes.technologySciencePageView);
  }
  
  void navigateToCultureArtPage() {
    navigationService.navigateTo(Routes.cultureArtPageView);
  }
}