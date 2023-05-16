import 'package:flutter/material.dart';
import 'package:inbrand_pr/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final int? maxLines;
  final double? borderRadius;
  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FormFieldValidator? validator;
  FormFieldSetter? onSaved;
  final Color? color;

  final bool? obscureText;

  CustomTextField({
    super.key,
    this.keyboardType,
    this.onSaved,
    this.color,
    this.borderRadius,
    this.controller,
    this.suffixIcon,
    this.maxLines,
    this.hintText,
    this.validator,
    this.prefixIcon,
    this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextFormField(
        maxLines: maxLines,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: color!,
          filled: true,
          contentPadding: const EdgeInsets.all(12.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide.none,
          ),
        ),
        validator: validator,
        onSaved: onSaved,
        obscureText: obscureText!,
      ),
    );
  }
}
