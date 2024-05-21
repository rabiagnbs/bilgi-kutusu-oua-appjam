import 'dart:convert';
import 'package:html/parser.dart'; // HTML parse edici paket
import 'package:http/http.dart' as http;
import 'package:stacked/stacked.dart';

class TechnologySciencePageViewModel extends BaseViewModel {
  String _info = 'TEKNOLOJİ & BİLİM';
  String get info => _info;

  String _removeHtmlTags(String htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body?.text).documentElement?.text ?? '';
    return parsedString;
  }

  Future<void> searchWikipedia(String query) async {
    final url = Uri.parse(
        'https://tr.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=$query');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final pages = data['query']['pages'];
      if (pages.isNotEmpty) {
        final page = pages.entries.first.value;
        if (page['extract'] != null && page['extract'].isNotEmpty) {
          String fullText = page['extract'];
          _info = _getFirst500Characters(_removeHtmlTags(fullText));
        } else {
          _info = 'Sonuç bulunamadı';
        }
      } else {
        _info = 'Sonuç bulunamadı';
      }
    } else {
      _info = 'Bir hata oluştu';
    }

    notifyListeners();  // Ekranı güncellemek için notifyListeners'ı çağırın
  }

  String _getFirst500Characters(String text) {
    if (text.length > 500) {
      return text.substring(0, 500) + '...';
    } else {
      return text;
    }
  }

  void init() {
    // Herhangi bir başlangıç işlemi burada yapılabilir
  }
}
