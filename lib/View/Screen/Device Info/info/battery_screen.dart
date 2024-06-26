import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secretcodes_app/util/colors.dart';
import 'package:secretcodes_app/util/textStyle.dart';
import 'device_screen.dart';

battery() {
  return Column(
    children: [
      Container(
        height: 100,
        decoration: const BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image.asset(
                "assets/images/53s%.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "UNKNOWN",
                  style: textStyle.smallText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: colorBlack,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Voltage : ",
                      style: textStyle.smallData.copyWith(
                        color: colorBlack,
                      ),
                    ),
                    Text(
                      "3810 mV",
                      style: textStyle.smallData.copyWith(
                        color: colorSubHeadingText,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Temperature : ",
                      style: textStyle.smallData.copyWith(
                        color: colorBlack,
                      ),
                    ),
                    Text(
                      "29.0  C",
                      style: textStyle.smallData.copyWith(
                        color: colorSubHeadingText,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                  child: Text(
                    "Network",
                    style: textStyle.subHeading,
                  ),
                ),
              ),
              data("Battery Level", "49%"),
              data("Temperature", "29.0  C"),
              data("Voltage", "3810 mV"),
              data("Battery Capacity", "5830.0 mAh"),
              data("Technology", "Li-ion"),
              data("Battery Health", "Good"),
            ],
          ),
        ),
      ),
    ],
  );
}
