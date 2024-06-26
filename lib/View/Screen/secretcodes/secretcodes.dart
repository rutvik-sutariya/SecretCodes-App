import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:secretcodes_app/View/Screen/secretcodes/phonecode_screen.dart';
import 'package:secretcodes_app/util/colors.dart';
import 'package:secretcodes_app/util/textStyle.dart';

class SecretCodeScreen extends StatelessWidget {
  SecretCodeScreen({super.key});

  final RxList<String> logo = <String>[
    "samsung",
    "vivo",
    "oppo",
    "nokia",
    "lava",
    "realme",
    "pixel",
    "mi",
    "oneplus",
    "motorola",
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorWhite,
        centerTitle: true,

        title: Text(
          "Secret Codes",
          style: textStyle.subHeading,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.dialog(
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                "Welcome",
                                style: textStyle.subHeading,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "This information is for educational purposes only and we have no affiliation with any brand. we are not intended to breach anyone eles privacy and copyright claim. Copyright disclaimer under section 107 of the copyright act of 1976, allowance is made for fair use for purposes such as teaching, education, and researcg.",
                                style: textStyle.smallText
                                    .copyWith(color: Color(0xff8d8d8d)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Got It!",
                                      style: textStyle.subHeading,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            icon: Icon(
              Icons.info_outline,
              color: colorSubHeadingText,
            ),
          ),
          // SizedBox(
          //   width: 20,
          // )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
        child:
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 2 / 2,
          ),
          shrinkWrap: true,
          itemCount: 10,
          // physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PhoneInfoScreen(phone: logo[index],);
                },
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26, // Shadow color
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(4, 4), // Offset of the shadow
                    ),
                  ],
                  color: colorWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/${logo[index]}.png",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
