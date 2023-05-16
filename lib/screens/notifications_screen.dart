import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notifications',
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Mark all as read',
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 10.0),
                child: Text(
                  'Today',
                  style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),

              // first stack for online status and text....

              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                color: const Color(0xFFFF9980),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8.0),
                      height: 65,
                      width: 65,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/png_icons/profile.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 42.0, left: 33),
                            child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Color(0xFFFFFFFF),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 36.0, top: 0, right: 3.0, bottom: 42.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Color(0xFF3D8361),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your payment for scratch has been',
                          style: GoogleFonts.inter(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Validated',
                          style: GoogleFonts.inter(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '2 Hours Ago',
                          style: GoogleFonts.inter(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF000000).withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // second stack for online status and text

              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                // color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      height: 65,
                      width: 65,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/png_icons/profile.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 42.0, left: 33),
                            child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Color(0xFFFFFFFF),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 36.0, top: 0, right: 3.0, bottom: 42.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Color(0xFF3D8361),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'James David is now following',
                          style: GoogleFonts.inter(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '2 Hours Ago',
                          style: GoogleFonts.inter(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF000000).withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  'Yesterday',
                  style: GoogleFonts.inter(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF000000)),
                ),
              ),
              // third stack online status and text...
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                // color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 14.0),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/png_icons/profile.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your payment for scratch has been',
                          style: GoogleFonts.inter(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Validated',
                          style: GoogleFonts.inter(
                              fontSize: 15.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '2 Hours Ago',
                          style: GoogleFonts.inter(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF000000).withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
