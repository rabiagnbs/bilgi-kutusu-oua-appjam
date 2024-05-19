import 'package:bilgi_kutusu_oua_appjam/ui/culture_art/culture_art_page_view.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/education/education_page_view.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/health/health_page_view.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/hobby_fun/hobby_fun_page_view.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/home_page/home_page_view.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/splash/splash_view.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/technology_science/technology_science_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: HomePageView),
  MaterialRoute(page: HealthPageView),
  MaterialRoute(page: EducationPageView),
  MaterialRoute(page: CultureArtPageView),
  MaterialRoute(page: HobbyFunPageView),
  MaterialRoute(page: TechnologySciencePageView),

])
class App {}
