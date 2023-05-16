import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inbrand_pr/screens/auth_screens/sign_in_screen.dart';

import 'package:inbrand_pr/utils/colors.dart';
import 'package:inbrand_pr/utils/icon_path.dart';
import 'package:inbrand_pr/widgets/custom_button.dart';
import 'package:inbrand_pr/widgets/custom_socail_account_login_button.dart';
import 'package:inbrand_pr/widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool seePassword = true;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Brand Icon ...
                SvgPicture.asset(
                  IconPath.brandIcon,
                  height: 42,
                ),
                const SizedBox(height: 12),
                // Welcome back text...
                const Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: CustomTextField(
                        color: appGreyColor,
                        borderRadius: 30,
                        maxLines: 1,
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        hintText: "Full Name",
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: CustomTextField(
                        color: appGreyColor,
                        borderRadius: 30,
                        maxLines: 1,
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        hintText: "Gender",
                      ),
                    )
                  ],
                ),
                // Custom Text field for Email...
                CustomTextField(
                  color: appGreyColor,
                  borderRadius: 30,
                  maxLines: 1,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "example@email.com",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(IconPath.emailIcon),
                  ),
                ),
                // Custom Text field for Password...
                CustomTextField(
                  color: appGreyColor,
                  borderRadius: 30,
                  maxLines: 1,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "Enter Password",
                  obscureText: seePassword,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(IconPath.passwordIcon),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
                        _obSecureText();
                      },
                      child: SvgPicture.asset(seePassword
                          ? IconPath.disabledEyeIcon
                          : IconPath.eyeIcon),
                    ),
                  ),
                ),
                // Custom Text field for Confirm Password...
                CustomTextField(
                  color: appGreyColor,
                  borderRadius: 30,
                  maxLines: 1,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "Confirm Password",
                  obscureText: seePassword,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(IconPath.passwordIcon),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
                        _obSecureText();
                      },
                      child: SvgPicture.asset(seePassword
                          ? IconPath.disabledEyeIcon
                          : IconPath.eyeIcon),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                // Custom button for sign in to new screen...
                const CustomButton(
                  buttonText: "Sign Up",
                ),
                // Text "or continue with"...
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Or continue with",
                    ),
                  ),
                ),
                // Google button for sign in...
                CustomSocialLoginButton(
                  iconAddress: IconPath.googleIcon,
                  name: "Google",
                ),
                // Twitter button for sign in...
                CustomSocialLoginButton(
                  iconAddress: IconPath.twitterIcon,
                  name: "Twitter",
                ),
                // Twitter button for sign in...
                CustomSocialLoginButton(
                  iconAddress: IconPath.faceBookIcon,
                  name: "Facebook",
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account ? ",
                        style: TextStyle(color: Colors.black)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      },
                      child: Text("Sign in",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _obSecureText() {
    seePassword = !seePassword;
    setState(() {});
  }
}
