library my_prj.globals;

import 'dart:io';
import 'dart:math';
import 'package:secretcodes_app/util/colors.dart';
import 'package:secretcodes_app/util/textStyle.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

//=========================Variables============================================

void showSnackBarCondition(String message) {
  final snackBar = GetBar(
    margin: const EdgeInsets.fromLTRB(16, 50, 16, 16),
    // Adjust top margin for spacing
    backgroundColor: const Color(0xffD1FFE1),
    maxWidth: 400,
    padding: const EdgeInsets.all(25),
    borderRadius: 12,
    icon: SvgPicture.asset(
      "assets/done.svg",
      width: 32,
      height: 32,
      color: const Color(0xff0B8233),
    ),
    messageText: Align(
      alignment: Alignment.centerLeft, // Align text to the left
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        // Adjust left margin for shifting right
        child: SelectableText(
          message,
          style: GoogleFonts.dmSans(
            fontSize: 16,
            color: const Color(0xff0B8233),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    duration: const Duration(milliseconds: 1000),
    snackPosition: SnackPosition.BOTTOM,
    // Align Snackbar to top
  );
  Get.showSnackbar(snackBar);
}

SizedBox defaultPadding = SizedBox(
  height: 20,
);

SizedBox fiftyPadding = SizedBox(
  height: 15,
);

_launchInstagram(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void routePage(BuildContext context, String query) {
  Navigator.of(context).pushNamed(query);
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

Future<void> delay(int time) async {
  await Future.delayed(Duration(milliseconds: time), () {});
}

int basicPageDelay = 1000;
int activityCount = 0;

Widget loadingWidget(
    [String msgTitle = "No Data Found.",
    String msgSubTitle = "No data found or slow internet connection.",
    String image = "images/noHistory.png"]) {
  return Center(
    child: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 10)),
        builder: (c, s) => s.connectionState == ConnectionState.done
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   image,
                  //   width: 55,
                  //   height: 55,
                  // ),
                  // const SizedBox(
                  //   height: 12,
                  // ),
                  SelectableText(
                    msgTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SelectableText(
                    msgSubTitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              )
            : const CircularProgressIndicator()),
  );
}

List<String> dynamicToStatic(List projectClimate) {
  List<String> aa = [];
  for (int i = 0; i < projectClimate.length; i++) {
    aa.add(projectClimate[i].toString().trim());
  }
  return aa;
}

RxBool actionRoom = false.obs;
RxString roomId = ''.obs;
RxString userId = ''.obs;

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
const adminMail = 'admin@admin.com';
const _chars1 = '1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

String getRandomInt(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars1.codeUnitAt(_rnd.nextInt(_chars1.length))));

Future<bool> checkInternet() async {
  try {
    final result = await InternetAddress.lookup('www.google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      customPrint('connected');
      return Future.value(true);
    }
  } on SocketException catch (_) {
    customPrint('not connected');
    return Future.value(false);
  }
  return Future.value(false);
}

int getJsonLength(jsonText) {
  int len = 0;
  try {
    while (jsonText[len] != null) {
      len++;
    }
    // customPrint("Len :: $len");
  } catch (e) {
    // customPrint("Len Catch :: $len");
    return len;
  }
  return 0;
}

String stringToJson(String key, String value) {
  String dff = ("\"" + key + "\"\r" + ": \"" + value + "\"\r").toString();
  String jsonText = '"$key": "$value"';
  customPrint("Dff :: $jsonText");
  return jsonText;
}

bool debugMode = false;

checkDebugMode() {
  assert(() {
    debugMode = true;
    return true;
  }());
}

void customPrint(text) {
  if (debugMode) {
    if (kDebugMode) {
      print(text);
    }
  }
}

void customLog(text) {
  if (debugMode) {
    if (kDebugMode) {
      print(text);
    }
  }
}

String getStringCont(String cont) {
  return cont.replaceAll("+91", "").toString().trim();
}

int getStringInt(String text) {
  try {
    String data = "";
    data = text.replaceAll(RegExp(r'[^0-9]'), '');
    return int.parse(data);
  } catch (e) {
    return 0;
  }
}

class SplitArray {
  static List list1 = [];
  static List list2 = [];
  static List mergeList = [];

  static void split(List array, [String delim = "{}"]) {
    list1.clear();
    list2.clear();
    for (int i = 0; i < array.length; i++) {
      list1.add(array[i].toString().split(delim)[0]);
      list2.add(array[i].toString().split(delim)[1]);
    }
    customPrint("List 1 :: $list1");
    customPrint("List 2 :: $list2");
  }

  static void add(List array1, List array2, [String delim = "{}"]) {
    mergeList.clear();
    for (int i = 0; i < array1.length; i++) {
      mergeList.add(array1[i] + delim + array2[i]);
    }
  }
}

// extension StringExtension on String {
//   String capitalize() {
//     return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
//   }
// }

List<String> stringToList(String str, [String delim = ","]) {
  String removedBrackets = str.replaceAll("[", "");
  removedBrackets = removedBrackets.replaceAll("]", "");
  List<String> parts = removedBrackets.split(delim);
  parts.remove("");
  customPrint("parts :: $parts");
  return parts;
}

String stringToListString(String str, [String delim = ","]) {
  String removedBrackets = str.replaceAll("[", "");
  removedBrackets = removedBrackets.replaceAll("]", "");
  List<String> parts = removedBrackets.split(delim);
  parts.remove("");
  customPrint("parts :: $parts");
  return removedBrackets;
}

String listToString(List list) {
  String data = "";
  for (int i = 0; i < list.length; i++) {
    data = "$data${list[i]},";
  }

  customPrint("listToString :: $data");

  return data;
}

bool kIsValidEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool kIsValidDouble(String value) {
  bool ans = false;
  try {
    double.parse(value);
    ans = true;
  } on Exception catch (e) {
    ans = false;
  }
  return ans;
}

bool kIsValidTimeslot(String value, [bool range = false]) {
  if (value.toLowerCase().contains("am") ||
      value.toLowerCase().contains("pm")) {
    return false;
  }

  if (getStringInt(value).toString().length != 4 && !range) {
    return false;
  }
  if (!value.contains(":")) {
    return false;
  }

  if (range) {
    if (!value.contains("-")) {
      return false;
    }
  }

  return true;
}

bool kIsValidCourtDuration(String value) {
  if (value != "Km" && value != "Mt") {
    return false;
  }
  return true;
}

String addZero(val) {
  int value = int.parse(val.toString());
  if (value < 10) {
    return "0$value";
  }
  return "$value";
}

List<String> apiKeyList = [
  "c7967fa0-1a4e-4eda-aed4-f2335fa3ca1a",
  "4cd15d28-95fa-4c8d-87eb-121af613dfce",
  "9da45650-69eb-47fc-b411-9e37b7a176fa",
  "b3ee8410-2453-4496-9031-197123e01abf"
      "b3ee8410-2453-4496-9031-197123e01abf"
];

String getRandomCrickDataApiKey() {
  String key = apiKeyList[Random().nextInt(apiKeyList.length)];
  customPrint("getRandomCrickDataApiKey :: $key");
  return key;
}

int calculateTotalMarks({required String totalMarks}) {
  List<String> marks = totalMarks.split(',');
  int sum = 0;
  for (int i = 0; i < marks.length; i++) {
    sum = sum + int.parse(marks[i]);
  }
  return sum;
}

userData({required icon, required title, required name,required onTap}) {
  return Column(
    children: [
      Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff363fb6),
                    Color(0xff212b62),
                    Color(0xff3E233A),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: colorBlack,
                  ),
                  child: Icon(
                    icon,
                    size: 20,
                    color: colorYellow,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.adamina(
                    fontSize: 11,
                    color: colorSubHeadingText,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              SelectableText(name, style: textStyle.subHeading),
            ],
          )
        ],
      ),
      const SizedBox(
        height: 25,
      ),
    ],
  );
}