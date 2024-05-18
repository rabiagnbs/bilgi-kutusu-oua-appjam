
import 'package:bilgi_kutusu_oua_appjam/app/app.router.dart';
import 'package:bilgi_kutusu_oua_appjam/app/app_base_view_model.dart';



class SplashViewModel extends AppBaseViewModel {
  init() {
    Future<void>.delayed(const Duration(seconds: 2), () {
      navigationService.navigateTo(Routes.homePageView);
    });
  }
}