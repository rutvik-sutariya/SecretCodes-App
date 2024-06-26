import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secretcodes_app/View/Screen/Home/home_screen.dart';
import 'package:secretcodes_app/View/Screen/SplashScreen/slider_screen.dart';
import 'package:secretcodes_app/util/colors.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../globalVariable.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstScreen();
  }

  Future<void> firstScreen() async {
    await delay(4000);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return IntroPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorDark,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/splash/lock.svg"),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                "* * * * *",
                style:
                    textStyle.heading.copyWith(fontSize: 50, color: colorWhite),
              ),
            ),
            Text("Secret codes",
                style: textStyle.heading.copyWith(color: colorWhite)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "For Android",
                style: textStyle.heading.copyWith(color: colorWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
