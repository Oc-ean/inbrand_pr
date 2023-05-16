import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inbrand_pr/screens/job_search_info.dart';
import 'package:inbrand_pr/utils/icon_path.dart';
import 'package:inbrand_pr/utils/reusable%20row%20for%20new%20hiring.dart';

class JobSectionScreen extends StatelessWidget {
  const JobSectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14.0,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          IconPath.searchIcon,
                          color: Colors.grey.shade500,
                        ),
                        const SizedBox(
                          width: 18.0,
                        ),
                        Text(
                          'Job title or keyword',
                          style: GoogleFonts.inter(fontSize: 15.0),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Top Hiring Company',
                  style: GoogleFonts.inter(
                      fontSize: 15.0, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),

                // hiring card....

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const JobSearchInfo(),
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    width: MediaQuery.of(context).size.height * 0.48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFEF4C23),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 47,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Container(
                                    height: 38,
                                    width: 38,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/png_icons/brand_icon.png',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Ui/Ux Designer',
                                        style: GoogleFonts.inter(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        width: 110,
                                      ),
                                      const Icon(
                                        Icons.bookmark_border_rounded,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Inbrand',
                                    style: GoogleFonts.inter(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 33,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: const Color.fromRGBO(0, 0, 0, 0.39),
                                ),
                                child: Center(
                                  child: Text(
                                    'Full Time',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 33,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: const Color.fromRGBO(0, 0, 0, 0.39),
                                ),
                                child: Center(
                                  child: Text(
                                    'Entry level',
                                    style:
                                        GoogleFonts.inter(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nigeria',
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '10 hours ago',
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'New hiring',
                  style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableNewHiringRow(),
                const SizedBox(
                  height: 20,
                ),
                const ReusableNewHiringRow(),
                const SizedBox(
                  height: 20,
                ),
                const ReusableNewHiringRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
