import 'dart:developer';
import 'package:bilgi_kutusu_oua_appjam/common/custom_box.dart';
import 'package:bilgi_kutusu_oua_appjam/common/custom_button.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/home_page/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;


class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        onViewModelReady: (viewmodel) => viewmodel.init(),
        disposeViewModel: false,
        builder: (context, viewmodel, child) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Bilgi Kutusu',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1, 0),
                        end: Alignment(1, 0),
                        colors: [
                          Color.fromRGBO(204, 26, 109, 1),
                          Color.fromRGBO(211, 45, 203, 1),
                        ],
                      ),
                    ),
                  ),
                ),
                body: Center(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: const Color.fromRGBO(218, 205, 230, 1),
                    child: Column(
                      children: <Widget>[
                      Stack(
  children: [
    // Üstteki resmi ekleyin ve boyutunu ayarlayın
    Positioned(
      top: 0, // Container'ın üstüne yerleştirmek için
      left: 0,
      right: 0,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi), // Resmi X ekseninde 180 derece döndür
        child: Image.asset(
          'assets/resimler/çiçek.png', // Üstteki resmin yolu
          width: MediaQuery.of(context).size.width, // Genişliği ekrana göre ayarlayın
          height: 60, // Yüksekliği 60 piksel olarak ayarlayın
          fit: BoxFit.cover, // Resmi uygun şekilde boyutlandırın
        ),
      ),
    ),
    // Container'ı ekleyin
    Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 60.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-1, 0),
            end: Alignment(1, 0),
            colors: [
              Color.fromRGBO(204, 26, 109, 1),
              Color.fromRGBO(211, 45, 203, 1),
            ],
          ),
          border: Border.all(
            color: const Color.fromARGB(255, 216, 34, 34),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.only(
          top: 90,
          bottom: 80.0,
        ),
        child: const Text(
          'Hangi Konu Hakkında Bilgi Almak İstersiniz?',
          style: TextStyle(color: Color.fromARGB(255, 42, 6, 6), fontSize: 20.0),
        ),
      ),
    ),
    // Alttaki resmi ekleyin ve boyutunu ayarlayın
    Positioned(
      bottom: 0, // Container'ın altına yerleştirmek için
      left: 0,
      right: 0,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationX(math.pi), // Resmi X ekseninde 180 derece döndür
        child: Image.asset(
          'assets/resimler/çiçek.png', // Alttaki resmin yolu
          width: MediaQuery.of(context).size.width, // Genişliği ekrana göre ayarlayın
          height: 60, // Yüksekliği 60 piksel olarak ayarlayın
          fit: BoxFit.cover, // Resmi uygun şekilde boyutlandırın
        ),
      ),
    ),
  ],
),


                        CustomButton(
                            text: 'HOBİ/EĞLENCE',
                            onPressed: () {
                              viewmodel.navigateToHobbyFunPage();
                            }),
                        CustomButton(
                            text: 'KÜLTÜR/SANAT',
                            onPressed: () {
                              viewmodel.navigateToCultureArtPage();
                            }),
                        CustomButton(
                            text: 'TEKNOLOJİ VE BİLİM',
                            onPressed: () {
                              viewmodel.navigateToTechnologySciencePage();
                            }),
                        CustomButton(
                            text: 'SAĞLIK',
                            onPressed: () {
                              viewmodel.navigateToHealthPage();
                            }),
                        CustomButton(
                            text: 'EĞİTİM',
                            onPressed: () {
                              viewmodel.navigateToEducationPage();
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
