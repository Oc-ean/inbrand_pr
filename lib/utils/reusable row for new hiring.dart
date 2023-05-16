import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableNewHiringRow extends StatelessWidget {
  const ReusableNewHiringRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 47,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
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
            Text(
              'Junior Flutter  Dev',
              style: GoogleFonts.inter(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  'Inbrand , Nigeria ',
                  style: GoogleFonts.inter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 125,
                ),
                const Icon(
                  Icons.more_vert_outlined,
                  size: 30,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
