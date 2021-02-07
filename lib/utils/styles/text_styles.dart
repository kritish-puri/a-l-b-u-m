import 'package:flutter/material.dart';
import 'package:album/constants/colors.dart';

class AppText {
  static TextStyle buttonText({Color color = AppColors.black}) {
    return TextStyle(color: color, fontSize: 14);
  }

  static TextStyle largeText({Color color = AppColors.title}) {
    return TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w700);
  }
}
