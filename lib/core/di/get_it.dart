
import 'package:bilgi_kutusu_oua_appjam/app/app_base_view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() =>
      AppBaseViewModel()); // Bu çağırıldığında ayağa kalkmasını istediğimiz için => registerLazySingleton

  getIt.registerLazySingleton(() =>
      NavigationService()); /// bunu anlamadım, ama lazım gibi



}
