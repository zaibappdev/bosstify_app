import 'package:flutter/material.dart';
import '../../app/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String titleText;
  final double width;
  final double height;
  final double borderRadius;
  final Color borderColor;
  final Color focusedBorderColor;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.titleText,
    this.width = double.infinity,
    this.height = 45,
    this.borderRadius = 4,
    this.borderColor = AppColors.black,
    this.focusedBorderColor = AppColors.teal,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: width,
          height: height,
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: borderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: focusedBorderColor, width: 1.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
