import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inbrand_pr/utils/colors.dart';
import 'package:inbrand_pr/utils/onboarding_image_path.dart';

import '../screens/auth_screens/sign_in_screen.dart';

class FourthOnBoardingScreen extends StatelessWidget {
  const FourthOnBoardingScreen({Key? key}) : super(key: key);

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
                              OnBoardingImagePath.fourth,
                            ),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.47,
                          left: MediaQuery.of(context).size.height * 0.23),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: 165,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(11),
                            topRight: Radius.circular(11),
                            bottomRight: Radius.circular(11),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get paid by receiving',
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: primaryColor),
                              ),
                              Text(
                                'messages requests',
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: primaryColor),
                              ),
                            ],
                          ),
                        ),
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
                                'Explore amazing',
                                style: GoogleFonts.inter(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'features on our platform',
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
                                        0.10),
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
                                                            const SignInScreen()));
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
