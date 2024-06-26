import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../../util/colors.dart';

memory(){
  return Column(children: [
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
              child:      Image.asset(
                "assets/images/ram.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "RAM",
                  style: textStyle.smallText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: colorBlack,
                  ),
                ),
                Text("Total : 6 GB, Used : 3085 MB\nFree : 2329 MB",
                    style: textStyle.smallData
                        .copyWith(color: colorSubHeadingText, fontSize: 12)),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child:      Image.asset(
                "assets/images/53%.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    ),
    SizedBox(height: 20,),
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
              child:      Image.asset(
                "assets/images/inter.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Internal Storage",
                  style: textStyle.smallText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: colorBlack,
                  ),
                ),
                Text("Total : 109 GB, Used : 19 GB\nFree : 90 GB",
                    style: textStyle.smallData
                        .copyWith(color: colorSubHeadingText, fontSize: 12)),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child:      Image.asset(
                "assets/images/17%.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    ),
    SizedBox(height: 20,),
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
              child:      Image.asset(
                "assets/images/system.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "System Storage",
                  style: textStyle.smallText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: colorBlack,
                  ),
                ),
                Text("Total : 3.49 GB, Used : 3.49 GB\nFree : 5.16 MB",
                    style: textStyle.smallData
                        .copyWith(color: colorSubHeadingText, fontSize: 12)),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child:      Image.asset(
                "assets/images/99%.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    ),
  ],);
}