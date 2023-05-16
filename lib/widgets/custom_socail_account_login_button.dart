import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inbrand_pr/utils/colors.dart';

class CustomSocialLoginButton extends StatelessWidget {
  final String? name;
  final String? iconAddress;
  const CustomSocialLoginButton({Key? key, this.name, this.iconAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: secondPrimaryColor,
        border: Border.all(color: appGreyColor, width: 1),
      ),
      margin: const EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          SvgPicture.asset('$iconAddress'),
          Spacer(),
          Text(
            'Continue with $name',
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
