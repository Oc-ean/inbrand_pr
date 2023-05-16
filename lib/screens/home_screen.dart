import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inbrand_pr/utils/colors.dart';
import 'package:inbrand_pr/utils/icon_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App Bar content placed here...
              // profile picture, brand icon, search and chat button...

              // Slide bar or list of persons that have added there statuses...
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      12,
                      (index) => Container(
                            height: 100,
                            width: 100,
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(width: 2, color: primaryColor)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/png_icons/profile.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                ),
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      10,
                      (index) => Container(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: appGreyColor),
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                                width: 2, color: primaryColor)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.asset(
                                            "assets/png_icons/profile.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Name Of Person",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          Text("Post time")
                                        ],
                                      ),
                                      const Spacer(),
                                      const Icon(Icons.more_vert)
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(12),
                                    height: 300,
                                    color: Colors.grey,
                                  ),
                                  const Text(
                                    "What is your feelings, write here.",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: [
                                      SvgPicture.asset(IconPath.favoriteIcon),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: Text("2k"),
                                      ),
                                      SvgPicture.asset(IconPath.commentIcon),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: Text("4k"),
                                      ),
                                      SvgPicture.asset(IconPath.retweetIcon),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: Text("200"),
                                      ),
                                      SvgPicture.asset(IconPath.shareIcon),
                                      const Spacer(),
                                      SvgPicture.asset(IconPath.markasIcon),
                                      const SizedBox(width: 8)
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                ],
                              ),
                            ),
                          )),
                ),
              ),
              const SizedBox(
                height: 65,
              )
            ],
          ),
        ),
      ),
    );
  }
}
