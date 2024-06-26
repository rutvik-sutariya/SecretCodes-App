import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../util/colors.dart';

class PhoneInfoScreen extends StatefulWidget {
  const PhoneInfoScreen({super.key, required this.phone});

  final String phone;

  @override
  State<PhoneInfoScreen> createState() => _PhoneInfoScreenState();
}

class _PhoneInfoScreenState extends State<PhoneInfoScreen> {
  RxList<String> title = <String>[
    "*#06#",
    "*#07#",
    "*#*#426#*#*",
  ].obs;
  RxList<String> subTitle = <String>[
    "Display IMEI number",
    "Display  the specific Absorption Rate\n(SAR) value of the device",
    "Google Play Services",
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: colorWhite,
        centerTitle: true,
elevation: 0,
        title: Text(
          widget.phone.toUpperCase(),
          style: textStyle.subHeading,
        ),
      ),
      body: Column(
          children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(left: 5,right: 5,top: 30),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title[index],
                          style: textStyle.subHeading,
                        ),
                        Center(
                          child: Text(
                            subTitle[index],
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff151515),
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            color: colorBackground,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: DottedLine(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          lineLength: double.infinity,
                          lineThickness: 1.0,
                          dashLength: 6.0,
                          dashColor: colorSubHeadingText,
                          dashRadius: 0.0,
                          dashGapLength: 6.0,
                          dashGapColor: Colors.transparent,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(

                            color: colorBackground,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: colorRed,
                          ),
                          const Icon(
                            Icons.copy,
                          ),
                          const Icon(
                            Icons.share,
                          ),
                          Image.asset(
                            "assets/images/fours.png",
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
