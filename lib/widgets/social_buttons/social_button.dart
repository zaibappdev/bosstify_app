import 'package:flutter/material.dart';
import '../../app/constants/app_colors.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final String iconPath;
  final double iconSize;
  final double fontSize;
  final FontWeight fontWeight;

  const SocialButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.iconPath,
    this.width = double.infinity,
    this.height = 45,
    this.borderRadius = 4,
    this.backgroundColor = AppColors.white,
    this.textColor = AppColors.black,
    this.iconSize = 20,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(color: AppColors.black, width: 1),
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath, width: iconSize, height: iconSize),
            const SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
