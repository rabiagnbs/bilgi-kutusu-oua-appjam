import 'dart:developer';

import 'package:bilgi_kutusu_oua_appjam/common/custom_box.dart';
import 'package:bilgi_kutusu_oua_appjam/common/custom_button.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/home_page/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
                    'Uygulama İsmi',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, 1),
                        end: Alignment(-1, 0),
                        colors: [
                          Color.fromRGBO(188, 17, 231, 1),
                          Color.fromRGBO(105, 9, 129, 1),
                        ],
                      ),
                    ),
                  ),
                ),
                body: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: const Color.fromRGBO(
                      218, 205, 230, 1), // Lila arka plan rengi
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 80, bottom: 60.0),
                        child: CostomText(
                            text:
                                'Bilgi almak\nistediğiniz\nkategoriyi\nseçiniz'),
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
                            log("clicked");
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
            ));
  }
}
