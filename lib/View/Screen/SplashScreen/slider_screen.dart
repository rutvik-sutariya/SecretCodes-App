import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:introduction_slider/source/presentation/pages/introduction_slider.dart';
import 'package:introduction_slider/source/presentation/widgets/buttons.dart';
import 'package:introduction_slider/source/presentation/widgets/dot_indicator.dart';
import 'package:introduction_slider/source/presentation/widgets/introduction_slider_item.dart';
import 'package:secretcodes_app/View/Screen/Home/home_screen.dart';
import 'package:secretcodes_app/util/constants.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../util/colors.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body:  Container(
        height: 730,
        child: Stack(children: [
          IntroductionSlider(
            items: [
              IntroductionSliderItem(
                logo: Padding(
                  padding: const EdgeInsets.all(
                      constants.defaultPadding * 2),
                  child: Column(
                    children: [
                      Container(
                        height: constants.defaultPadding * 22,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/slide1.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: constants.defaultPadding * 2),
                      Text(
                        "Secret Codes",
                        style: textStyle.heading.copyWith(
                            fontSize: 30),
                      ),
                      SizedBox(height: constants.defaultPadding* 2),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                        style: textStyle.smallData.copyWith(
                          color: colorSubHeadingText,
                        fontSize: 16),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              IntroductionSliderItem(
                logo: Padding(
                  padding: const EdgeInsets.all(
                      constants.defaultPadding * 2),
                  child: Column(
                    children: [
                      Container(
                        height: constants.defaultPadding * 22,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/slide2.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: constants.defaultPadding * 2),
                      Text(
                        "Device Info",
                        maxLines: 2,
                        style: textStyle.heading.copyWith(
                            fontSize: 30),
                      ),
                      SizedBox(height: constants.defaultPadding* 2),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                        style: textStyle.smallData.copyWith(
                            color: colorSubHeadingText,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              IntroductionSliderItem(
                logo: Padding(
                  padding: const EdgeInsets.all(
                      constants.defaultPadding * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: constants.defaultPadding * 22,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/slide3.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: constants.defaultPadding * 2),
                      Text(
                        "Smart Tools",
                        maxLines: 2,
                        style: textStyle.heading.copyWith(
                            fontSize: 30),
                      ),
                      SizedBox(height: constants.defaultPadding* 2),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                        style: textStyle.smallData.copyWith(
                            color: colorSubHeadingText,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            done: Done(
              style: ButtonStyle(
                splashFactory: NoSplash.splashFactory,
              ),
              child:  Padding(
                padding: const EdgeInsets.only(
                    right: constants.defaultPadding, top:  constants.defaultPadding * 2),
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: colorDark,
                    ),
                    child: Icon(Icons.arrow_forward_sharp,color: colorWhite,)
                ),
              ),
              home: HomeScreen(),
            ),
            showStatusBar: true,
            next: Next(
              style: ButtonStyle(
                splashFactory: NoSplash.splashFactory,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: constants.defaultPadding, top:  constants.defaultPadding * 2),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                    width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: colorDark,
                  ),
                    child: Icon(Icons.arrow_forward_sharp,color: colorWhite,)
                ),
              ),
            ),
            back: Back(
              style: ButtonStyle(
                splashFactory: NoSplash.splashFactory,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: constants.defaultPadding, top:  constants.defaultPadding * 2),
                child: Icon(Icons.arrow_back,color: colorDark,),
              ),
            ),
            dotIndicator: DotIndicator(
              selectedColor: colorDark,
            ),
          ),
        ]
        ),
      ),
    );
  }
}
