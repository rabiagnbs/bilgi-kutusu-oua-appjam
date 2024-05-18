import 'package:bilgi_kutusu_oua_appjam/ui/home_page/home_page_view.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: HomePageView),
])
class App {}
