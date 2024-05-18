import 'package:bilgi_kutusu_oua_appjam/app/bilgi_kutusu.dart';
import 'package:bilgi_kutusu_oua_appjam/core/di/get_it.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI(); // call it after the binding so that they can be ready
  
  runApp(BilgiKutusu());
}
