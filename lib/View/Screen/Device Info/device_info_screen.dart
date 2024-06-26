import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secretcodes_app/View/Screen/Device%20Info/info/battery_screen.dart';
import 'package:secretcodes_app/View/Screen/Device%20Info/info/display_screen.dart';
import 'package:secretcodes_app/View/Screen/Device%20Info/info/memory_screen.dart';
import 'package:secretcodes_app/View/Screen/Device%20Info/info/network_Screen.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../../../util/colors.dart';
import 'info/device_screen.dart';

class DeviceInfo extends StatefulWidget {
  const DeviceInfo({super.key});

  @override
  State<DeviceInfo> createState() => _DeviceInfoState();
}

class _DeviceInfoState extends State<DeviceInfo> {
  RxString selectIndex = "0".obs;
  RxList<String> title = <String>[
    "Device",
    "Memory",
    "Display",
    "Battery",
    "Network",
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: colorBackground,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colorWhite,
          centerTitle: true,
          title: Text(
            "Device Info",
            style: textStyle.subHeading,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => GestureDetector(
                      onTap: () {
                        selectIndex(index.toString());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectIndex.value == index.toString()
                                ? colorDark
                                : colorWhite,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 4.0, bottom: 4, left: 14, right: 14),
                            child: Text(
                              title[index],
                              style: textStyle.smallData.copyWith(
                                  color: selectIndex.value == index.toString()
                                      ? Color(0xffffffff)
                                      : Color(0xff000000)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              selectIndex.toString() == '0'
                  ? device()
                  : selectIndex.toString() == '1'
                      ? memory()
                      : selectIndex.toString() == '2'
                          ? display()
                          : selectIndex.toString() == '3'
                              ? battery()
                              : network(),
            ],
          ),
        ),
      );
    });
  }
}
