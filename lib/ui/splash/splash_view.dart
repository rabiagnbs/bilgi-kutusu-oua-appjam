import 'package:bilgi_kutusu_oua_appjam/ui/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (viewmodel) => viewmodel.init(),
      disposeViewModel: false,
      builder: (context, viewmodel, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 1),
              end: Alignment(-1, 0),
              colors: [
                Color.fromRGBO(204, 26, 109, 1),
                Color.fromRGBO(211, 45, 203, 1),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.asset('assets/resimler/bilgi.jpg', errorBuilder: (context, error, stackTrace) {
                  return const Text('Resim yüklenemedi');
                }),
                const SizedBox(height: 20),
                Text(
                  'Uygulamamıza Hoş Geldiniz',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 30, // Yazı boyutunu istediğiniz gibi ayarlayın
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
