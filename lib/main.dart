import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:secretcodes_app/util/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'View/Screen/SplashScreen/splash_screen.dart';
import 'globalVariable.dart';

late SharedPreferences prefs;

void main() async {
  // runApp(Container(color: Colors.amber,));
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    checkDebugMode();
    return GetMaterialApp(
      title: 'Secret Codes',
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
