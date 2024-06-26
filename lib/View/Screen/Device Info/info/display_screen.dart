import 'package:flutter/cupertino.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../../util/colors.dart';
import 'device_screen.dart';

display(){
  return Column(children: [
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            data("Resolution", "720x1600 pixels"),
            data("Refresh Rate", "60.000004"),
            data("Physical Size", "6.5 Inches"),
          ],
        ),
      ),
    ),
    SizedBox(height: 20,),
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
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
                  "Device",
                  style: textStyle.subHeading,
                ),
              ),
            ),
            data("Density", "1.875 dpi"),
            data("Font Scale", "1.0"),
            data("HDR", "Not Supported"),
            data("Brightness Level", "162"),
            data("Brightness Percentage", "63.529415%"),
            data("Brightness Auto Mode", "yes"),
            data("Screen Timeout", "1800000 Second"),
            data("Orientation", "Portrait"),
            data("Screen Curve", "No"),
            data("Xdpi", "268.941"),
            data("Ydpi", "269.139"),
            data("Logical Density", "1.875"),
            data("Scaled Density", "1.875"),
          ],
        ),
      ),
    ),

  ],);
}