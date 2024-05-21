import 'package:bilgi_kutusu_oua_appjam/ui/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (viewmodel) => viewmodel.init(),
      disposeViewModel: false,
      builder: (context, viewmodel, child) => Scaffold(
        body: Stack(
          children: [
            // Resmin üzerine container ve içeriği ekle
            Positioned.fill(
              child: Image.asset(
                'assets/resimler/bilgi.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Text('Resim yüklenemedi');
                },
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(
                    0.4), // Container'ın arka plan rengini ayarla (opsiyonel)
                child: const Center(
                  child: Text(
                    'BİLGİ KUTUSU',
                    textAlign: TextAlign.center, // Yazıyı merkeze hizalayın
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 30, // Yazı boyutunu istediğiniz gibi ayarlayın
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
