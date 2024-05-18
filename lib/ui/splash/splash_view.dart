import 'package:bilgi_kutusu_oua_appjam/ui/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () =>
            SplashViewModel(), // bir sürü kez değil bir kere create edilsin ve hep aynı instance devam etsin diye: GetIt classını içinde create edilen AppBaseViewModeli kullanıyor olucaz sürekli.
        onViewModelReady: (viewmodel) => viewmodel
            .init(), // model ready olduğunda modelden init fonksiyonunu çağır
        disposeViewModel: false,
        builder: (context, viewmodel, child) => const Scaffold(
              body: Center(
                child: Text(
                  'Hoşgeldiniz',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ));
  }
}
