import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';
import 'package:bilgi_kutusu_oua_appjam/app/app_base_view_model.dart';

class HobbyFunPageViewModel extends AppBaseViewModel {
  String _info = 'HOBİ & EĞLENCE';
  String get info => _info;

  String _removeHtmlTags(String htmlString) {
    final document = parse(htmlString);
    final String parsedString = parse(document.body?.text).documentElement?.text ?? '';
    return parsedString;
  }

  Future<void> searchWikipedia(String query) async {
    final url = Uri.parse(
        'https://tr.wikipedia.org/w/api.php?action=query&list=search&srsearch=$query&format=json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['query']['search'].isNotEmpty) {
        _info = _removeHtmlTags(data['query']['search'][0]['snippet']);
      } else {
        _info = 'Sonuç bulunamadı';
      }
    } else {
      _info = 'Bir hata oluştu';
    }
    notifyListeners();
  }
}