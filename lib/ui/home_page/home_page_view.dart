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
        builder: (context, viewmodel, child) => const Scaffold(
              backgroundColor: Colors.purple,
              body: Center(
                child: Text(
                  'Bilgi Kutusu OUA AppJam',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ));
  }
}
