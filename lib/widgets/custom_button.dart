import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:inbrand_pr/screens/navigation_screen.dart';
import 'package:inbrand_pr/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  const CustomButton({Key? key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const NavigationScreen(),
          ),
        );
        print('Clicked');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: primaryColor,
        ),
        height: size.height * 0.06,
        alignment: Alignment.center,
        child: Text(
          buttonText!,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: appTextWhiteColor,
          ),
        ),
      ),
    );
  }
}
