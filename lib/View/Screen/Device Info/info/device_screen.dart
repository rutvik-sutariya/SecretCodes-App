import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../../util/colors.dart';

device() {
  return Expanded(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.5, bottom: 8.5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Icon(
                      Icons.smartphone_outlined,
                      color: colorDark,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "samsung , SM-M127G",
                        style: textStyle.smallText.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: colorBlack,
                        ),
                      ),
                      Text("Version 33\nAndroid 13.0 TIRAMISU",
                          style: textStyle.smallData
                              .copyWith(color: colorSubHeadingText, fontSize: 12)),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
                  data("Manufacture", "samsung"),
                  data("Brand", "samsung"),
                  data("Hardware", "exynos850"),
                  data("Model", "SM-M127G"),
                  data("Board", "exynos850"),
                  data("Display", "m12dd"),
                  data("Resolution", "720x1465 pixels"),
                  data("Density", "269.0 ppi"),
                  data("Dimention", "3840.0x781.3333"),
                  data("SystemUptime", "2 days, 18 hours,\n52 minutes"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
                        "OS",
                        style: textStyle.subHeading,
                      ),
                    ),
                  ),
                  data("Version", "13"),
                  data("Api", "33"),
                  data("Build",
                      "samsung/m12dd/\nm12:13/TP1A.220624.014/\nM127GXXS4CWB1:user/\nrelease-keys"),
                  data("Build ID", "TP1A.220624.014"),
                  data("Build Time", "February 3, 2023 | 1:53 pm"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
                        "Hardware",
                        style: textStyle.subHeading,
                      ),
                    ),
                  ),
                  data("Android Device Id", "a1036d16dbdd949e"),
                  data("Hardware Serial", "unknown"),
                  data("Hardware Serial", "GSM"),
                  data("USB Debugging", "Off"),
                  data("Network Type", "WIFI"),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    ),
  );
}

data(String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8, top: 4, bottom: 4),
    child: Row(
      children: [
        Text(
          title,
          style: textStyle.smallData.copyWith(color: colorBlack),
        ),
        Spacer(),
        Text(
          subtitle,
          style: textStyle.smallData
              .copyWith(color: colorSubHeadingText, fontSize: 12),
        ),
      ],
    ),
  );
}
