import 'package:flutter/cupertino.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../../util/colors.dart';
import 'device_screen.dart';

network(){
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
            data("Wifi Status", "Connected"),
            data("Wifi Direct", "Supports"),
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
                  "Network",
                  style: textStyle.subHeading,
                ),
              ),
            ),
            data("5G", "Not Supported"),
            data("Wifi", "On"),
            data("Dhcp Lease Duration", "86400 seconds"),
            data("Gateway", "192.168.29.1"),
            data("Netmask", "0.0.0.0"),
            data("DNS1", "192.168.29.1"),
            data("DNS2", "0.0.0.0"),
            data("Ip", "192.168.29.86"),
          ],
        ),
      ),
    ),

  ],);
}