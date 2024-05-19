// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bilgi_kutusu_oua_appjam/ui/culture_art/culture_art_page_view.dart'
    as _i6;
import 'package:bilgi_kutusu_oua_appjam/ui/education/education_page_view.dart'
    as _i5;
import 'package:bilgi_kutusu_oua_appjam/ui/health/health_page_view.dart' as _i4;
import 'package:bilgi_kutusu_oua_appjam/ui/hobby_fun/hobby_fun_page_view.dart'
    as _i7;
import 'package:bilgi_kutusu_oua_appjam/ui/home_page/home_page_view.dart'
    as _i3;
import 'package:bilgi_kutusu_oua_appjam/ui/splash/splash_view.dart' as _i2;
import 'package:bilgi_kutusu_oua_appjam/ui/technology_science/technology_science_view.dart'
    as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i10;

class Routes {
  static const splashView = '/';

  static const homePageView = '/home-page-view';

  static const healthPageView = '/health-page-view';

  static const educationPageView = '/education-page-view';

  static const cultureArtPageView = '/culture-art-page-view';

  static const hobbyFunPageView = '/hobby-fun-page-view';

  static const technologySciencePageView = '/technology-science-page-view';

  static const all = <String>{
    splashView,
    homePageView,
    healthPageView,
    educationPageView,
    cultureArtPageView,
    hobbyFunPageView,
    technologySciencePageView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.homePageView,
      page: _i3.HomePageView,
    ),
    _i1.RouteDef(
      Routes.healthPageView,
      page: _i4.HealthPageView,
    ),
    _i1.RouteDef(
      Routes.educationPageView,
      page: _i5.EducationPageView,
    ),
    _i1.RouteDef(
      Routes.cultureArtPageView,
      page: _i6.CultureArtPageView,
    ),
    _i1.RouteDef(
      Routes.hobbyFunPageView,
      page: _i7.HobbyFunPageView,
    ),
    _i1.RouteDef(
      Routes.technologySciencePageView,
      page: _i8.TechnologySciencePageView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.HomePageView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.HomePageView(),
        settings: data,
      );
    },
    _i4.HealthPageView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.HealthPageView(),
        settings: data,
      );
    },
    _i5.EducationPageView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.EducationPageView(),
        settings: data,
      );
    },
    _i6.CultureArtPageView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.CultureArtPageView(),
        settings: data,
      );
    },
    _i7.HobbyFunPageView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.HobbyFunPageView(),
        settings: data,
      );
    },
    _i8.TechnologySciencePageView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.TechnologySciencePageView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i10.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomePageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homePageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHealthPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.healthPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEducationPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.educationPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCultureArtPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.cultureArtPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHobbyFunPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.hobbyFunPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTechnologySciencePageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.technologySciencePageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomePageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homePageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHealthPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.healthPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEducationPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.educationPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCultureArtPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.cultureArtPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHobbyFunPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.hobbyFunPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTechnologySciencePageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.technologySciencePageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
