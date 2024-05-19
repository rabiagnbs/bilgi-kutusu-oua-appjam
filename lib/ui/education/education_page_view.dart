import 'package:bilgi_kutusu_oua_appjam/common/info_box.dart';
import 'package:bilgi_kutusu_oua_appjam/ui/culture_art/culture_art_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EducationPageView extends StatelessWidget {
  const EducationPageView({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return ViewModelBuilder<CultureArtPageViewModel>.reactive(
      viewModelBuilder: () => CultureArtPageViewModel(),
      disposeViewModel: true,
      builder: (context, viewmodel, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'EĞİTİM',
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
                    Color.fromRGBO(204, 26, 109, 1),
                    Color.fromRGBO(211, 45, 203, 1),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Eğitim Hakkında Merak Ettikleriniz',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewmodel.searchWikipedia(searchController.text);
                  },
                  child: const Text('Neler Öğreneceğiz?'),
                ),
                Image.asset('assets/resimler/egitim.jpg', errorBuilder: (context, error, stackTrace) {
                  return const Text('Resim yüklenemedi');
                }),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, 1),
                        end: Alignment(-1, 0),
                        colors: [
                          Color.fromRGBO(204, 26, 109, 1),
                          Color.fromRGBO(211, 45, 203, 1),
                        ],
                      ),
                    ),
                    child: Text(
                      viewmodel.info ?? 'Bilgi yok',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
