import 'package:flutter/material.dart';
import 'package:project2_gsg/shared_preferences/shared_preferences.dart';
import 'Pages/AboutPage.dart';
import 'database/controller/db_settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Shared Preferences
  await CacheData.sharedPreferencesInitialized();

  // Database Settings (Sqlite)
  await DatabaseSettings().databaseInitialized();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: AboutMePage(),
);
  }

}
