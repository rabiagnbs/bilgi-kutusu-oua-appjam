import 'package:bilgi_kutusu_oua_appjam/ui/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () =>
            SplashViewModel(), 
        onViewModelReady: (viewmodel) => viewmodel
            .init(),
        disposeViewModel: false,
        builder: (context, viewmodel, child) => Scaffold(
              body: Container(
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
                child: const Center(
                  child: Text(
                    'Hoşgeldiniz',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ));
  }
}
