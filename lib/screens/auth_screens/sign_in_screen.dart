import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inbrand_pr/screens/auth_screens/sign_up_screen.dart';

import 'package:inbrand_pr/utils/colors.dart';
import 'package:inbrand_pr/utils/icon_path.dart';
import 'package:inbrand_pr/widgets/custom_button.dart';
import 'package:inbrand_pr/widgets/custom_socail_account_login_button.dart';
import 'package:inbrand_pr/widgets/custom_text_field.dart';
//
// import '../utils/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool seePassword = true;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                // Brand icon....

                SvgPicture.asset(
                  'assets/svg_icons/brand_icon.svg',
                  height: 42.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Welcome back text....

                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text('Welcome back!, please enter your details.'),
                const SizedBox(
                  height: 18.0,
                ),

                // Custom text field for email....

                CustomTextField(
                  color: appGreyColor,
                  borderRadius: 30.0,
                  maxLines: 1,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'example@email.com',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(IconPath.emailIcon),
                  ),
                ),

                // Custom Text field for password...

                CustomTextField(
                  color: appGreyColor,
                  borderRadius: 30,
                  maxLines: 1,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'enter password',
                  obscureText: seePassword,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        _obSecureText();
                      },
                      child: SvgPicture.asset(seePassword
                          ? IconPath.passwordIcon
                          : IconPath.eyeIcon),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: const CustomButton(
                    buttonText: 'Sign In',
                  ),
                ),

                // Forgot password text...

                const Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                  ),
                ),

                // Check box for terms and condition...

                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.black,
                        value: checkBoxValue,
                        onChanged: (value) {
                          setState(() {
                            checkBoxValue = !checkBoxValue;
                          });
                          print('Clicked');
                        }),
                  ],
                ),
                const Text(
                  'Remember Me',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),

                // other social media to sign in with...

                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text('Or Continue with'),
                  ),
                ),

                // Google button sign in...

                CustomSocialLoginButton(
                  iconAddress: IconPath.googleIcon,
                  name: 'Google',
                ),

                // Twitter button sign in...

                CustomSocialLoginButton(
                  iconAddress: IconPath.twitterIcon,
                  name: 'Twitter',
                ),

                // Facebook button sign in...

                CustomSocialLoginButton(
                  iconAddress: IconPath.faceBookIcon,
                  name: 'Twitter',
                ),
                const SizedBox(height: 5),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: "Don't have an account?  ",
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Create one',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                              // nextScreen(context, const SignUpScreen());
                              print('Clicked');
                            },
                          style: TextStyle(color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
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
