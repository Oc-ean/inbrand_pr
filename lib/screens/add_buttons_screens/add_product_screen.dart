import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inbrand_pr/utils/colors.dart';
import 'package:inbrand_pr/utils/icon_path.dart';
import 'package:inbrand_pr/widgets/custom_button.dart';
import 'package:inbrand_pr/widgets/custom_text_field.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: secondPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Add Product",
          style: TextStyle(
            color: Color(0xFF3A3A3A),
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                color: Colors.grey.shade50,
                maxLines: 1,
                borderRadius: 12,
                obscureText: false,
                keyboardType: TextInputType.name,
                hintText: "Add Title",
              ),
              CustomTextField(
                color: Colors.grey.shade50,
                maxLines: 5,
                borderRadius: 12,
                obscureText: false,
                keyboardType: TextInputType.name,
                hintText: "Enter product details",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    IconPath.codeIcon,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Augumented reality',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // const SizedBox(height: 110),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  addDataToPostButtons(
                    buttonIcon: SvgPicture.asset(
                      IconPath.tagIcon,
                    ),
                    buttonText: "Delivery & Return",
                  ),
                  addDataToPostButtons(
                      buttonIcon: const Icon(Icons.image_outlined),
                      buttonText: "Add image"),
                  addDataToPostButtons(
                      buttonIcon: SvgPicture.asset(
                        IconPath.inkIcon,
                      ),
                      buttonText: "Colours"),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 100,
                child: addDataToPostButtons(
                    buttonIcon: const Icon(Icons.add_business_sharp),
                    buttonText: "Add price"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.30),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   CupertinoPageRoute(
                  //     builder: (context) => const NavigationScreen(),
                  //   ),
                  // );
                  print('Clicked');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: primaryColor,
                  ),
                  height: MediaQuery.of(context).size.height * 0.08,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Post',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: appTextWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  addDataToPostButtons(
      {required Widget buttonIcon, required String buttonText}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey.shade50),
      padding: const EdgeInsets.all(7),
      child: Row(
        children: [
          buttonIcon,
          const SizedBox(
            width: 5,
          ),
          Text(
            buttonText,
            style: const TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
