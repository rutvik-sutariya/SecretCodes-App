import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:secretcodes_app/View/Screen/favourite/favourite_screen.dart';
import 'package:secretcodes_app/View/Screen/secretcodes/secretcodes.dart';
import 'package:secretcodes_app/util/colors.dart';
import 'package:secretcodes_app/util/textStyle.dart';

import '../Device Info/device_info_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final RxList<String> logo = <String>[
    "deviceinfo.png",
    "exploredevice.png",
    "smarttools.png",
    "favorite.png",
  ].obs;
  final RxList<String> title = <String>[
    "Device Info",
    "Explore Device",
    "Smart Tools",
    "Favorite",
  ].obs;

  final RxList<String> subtitle = <String>[
    "About Device",
    "Android Tips",
    "Android Tools",
    "Android Favorite",
  ].obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => _scaffoldKey.currentState?.openDrawer(),
                          child: SvgPicture.asset(
                            "assets/images/logo.svg",
                            height: 20,
                            width: 20,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Home",
                            style: textStyle.heading,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Welcome",
                      style: textStyle.subHeading,
                    ),
                    Text(
                      "All Mobile Secret codes\n& Smart Tools",
                      style: textStyle.smallText,
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  "assets/images/phonelocks.png",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SecretCodeScreen();
                  },
                ));
              },
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26, // S// Shadow color
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(4, 4), // Offset of the shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: colorWhite),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/seccodes.png",
                        // fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome",
                            style: textStyle.subHeading,
                          ),
                          Text(
                            "Secret codes for android",
                            style: textStyle.smallText,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 2 / 2,
              ),
              shrinkWrap: true,
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  if (title[index] == "Favorite") {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const FavouriteScreen();
                      },
                    ));
                  }
                  if (title[index] == "Device Info") {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const DeviceInfo();
                      },
                    ));
                  }
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26, // Shadow color
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(4, 4), // Offset of the shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/${logo[index]}",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title[index],
                        style: textStyle.subHeading.copyWith(fontSize: 18),
                      ),
                      Text(
                        subtitle[index],
                        style: textStyle.smallText,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
          // Drawer content
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: colorDark,
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Image.asset(
                  "assets/images/drawer.png",
                  height: 115,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "All Secret Codes For Android",
                  style: textStyle.smallText
                      .copyWith(fontSize: 18, color: colorWhite),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  "All mobile secret codes include the latest\nmaster your android phone within\nminutes using this app",
                  textAlign: TextAlign.center,
                  style: textStyle.smallData.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FavouriteScreen();
              },));
            },
            child: data(Icons.favorite_border, "Favourite"),
          ),
          data(Icons.share, "Share"),
          data(Icons.star_rate_outlined, "Rate Us"),
          data(Icons.add_box_outlined, "More Apps (AD)"),
          data(Icons.privacy_tip_outlined, "Privacy Policy"),
        ],
      )),
    );
  }
}

data(icon, String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        const SizedBox(
          width: 12,
        ),
        Icon(
          icon,
          color: colorDark,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          title,
          style: textStyle.smallData.copyWith(color: colorBlack),
        ),
      ],
    ),
  );
}
