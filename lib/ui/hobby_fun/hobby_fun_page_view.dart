import 'package:bilgi_kutusu_oua_appjam/common/info_box.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/culture_art/culture_art_page_view_model.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/hobby_fun/hobby_fun_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HobbyFunPageView extends StatelessWidget {
  const HobbyFunPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HobbyFunPageViewModel>.reactive(
      viewModelBuilder: () => HobbyFunPageViewModel(),
      onViewModelReady: (viewmodel) => viewmodel.init(),
      disposeViewModel: false,
      builder: (context, viewmodel, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'HOBBİ & EĞLENCE',
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
            color:
                const Color.fromRGBO(218, 205, 230, 1), // Lila arka plan rengi
            child: Center(
              child: InfoBox(info: "hobi & eğlence bilgisi buraya gelecek"),
            ),
          ),
        ),
      ),
    );
  }
}
