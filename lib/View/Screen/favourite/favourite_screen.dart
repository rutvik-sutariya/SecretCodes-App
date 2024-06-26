import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../util/colors.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: colorWhite,
        centerTitle: true,
elevation: 0,
        title: Text(
          "Favourite",
          style: textStyle.subHeading,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [

            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
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
                            "*#06#",
                            style: textStyle.subHeading,
                          ),
                          Text(
                            "Display IMEI number",
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff151515),
                              fontWeight: FontWeight.w400
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
                          decoration: BoxDecoration(
                              color: colorBackground,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
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
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: colorBackground,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                      ],
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 30,right: 30),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.favorite_outlined,
                              color: colorRed,
                            ),
                            Icon(
                              Icons.copy,
                            ),
                            Icon(
                              Icons.share,
                            ),
                            Image.asset(
                              "assets/images/fours.png",color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
