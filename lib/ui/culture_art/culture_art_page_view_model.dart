import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';
import 'package:html/parser.dart'; // HTML parse edici paket
import 'package:flutter/material.dart';

class CultureArtPageViewModel extends BaseViewModel {
  String _info = 'KÜLTÜR & SANAT';
  String get info => _info;

  String _removeHtmlTags(String htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body?.text).documentElement?.text ?? '';
    return parsedString;
  }

  String _limitToThreeSentences(String text) {
    List<String> sentences = text.split(RegExp(r'(?<=[.!?])\s+'));
    if (sentences.length > 3) {
      return sentences.sublist(0, 3).join(' ') + '...';
    }
    return text;
  }

  Future<void> searchWikipedia(String query) async {
    final url = Uri.parse(
        'https://tr.wikipedia.org/w/api.php?action=query&list=search&srsearch=$query&format=json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['query']['search'].isNotEmpty) {
        String rawInfo = _removeHtmlTags(data['query']['search'][0]['snippet']);
        _info = _limitToThreeSentences(rawInfo);
      } else {
        _info = 'Sonuç bulunamadı';
      }
    } else {
      _info = 'Bir hata oluştu';
    }
    notifyListeners();
  }
}

class CultureArtPageView extends StatelessWidget {
  const CultureArtPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return ViewModelBuilder<CultureArtPageViewModel>.reactive(
      viewModelBuilder: () => CultureArtPageViewModel(),
      disposeViewModel: true,  // Duruma göre true veya false olarak ayarlayabilirsiniz
      builder: (context, viewmodel, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'KÜLTÜR & SANAT',
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
                      labelText: 'Kültür & Sanat Hakkında Merak Ettikleriniz',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewmodel.searchWikipedia(searchController.text);
                  },
                  child: const Text('Neler Öğrenecğiz?'),
                ),
                Image.asset('assets/resimler/kultur.jpg', errorBuilder: (context, error, stackTrace) {
                  return const Text('Resim yüklenemedi');
                }),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    constraints: BoxConstraints(minHeight: 100), // İstediğiniz minimum yüksekliği ayarlayın
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
