import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inbrand_pr/onboardingScreen/third_onborading_screen.dart';
import 'package:inbrand_pr/utils/colors.dart';
import 'package:inbrand_pr/utils/onboarding_image_path.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  const SecondOnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              OnBoardingImagePath.second,
                            ),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.67),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.29,
                        width: 400,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(33),
                            topLeft: Radius.circular(33),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22.0, left: 22.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Connect with',
                                style: GoogleFonts.inter(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Friends & Colleague',
                                style: GoogleFonts.inter(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Around the World',
                                style: GoogleFonts.inter(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              // const SizedBox(
                              //   height: 60,
                              // ),

                              Padding(
                                padding: EdgeInsets.only(
                                    right: 15.0,
                                    top: MediaQuery.of(context).size.height *
                                        0.08),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Skip',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      height: 48,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: primaryColor.withOpacity(0.6),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 2, left: 3),
                                            height: 45,
                                            width: 63,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              color: primaryColor,
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    CupertinoPageRoute(
                                                        builder: (context) =>
                                                            const ThirdOnBoardingScreen()));
                                                print(
                                                    '<======>Clicked<======>');
                                              },
                                              child: const Icon(
                                                Icons.arrow_forward,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
