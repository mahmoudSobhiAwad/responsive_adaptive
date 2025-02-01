import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/responsive_font_size.dart';

abstract class AppStyle {
  static TextStyle regualr16(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w400,
        color: const Color(0xff064061),
      );

  static TextStyle medium16(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w500,
        color: const Color(0xff064061),
      );

  static TextStyle semiBold16(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w600,
        color: const Color(0xff064061),
      );

  static TextStyle semiBold20(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 20),
        fontWeight: FontWeight.w600,
        color: const Color(0xff064061),
      );

  static TextStyle regular12(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 12),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
      );

  static TextStyle semiBold24(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 24),
        fontWeight: FontWeight.w600,
        color: const Color(0xff4EB7F2),
      );

  static TextStyle regular14(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 14),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
      );

  static TextStyle semiBold18(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 18),
        fontWeight: FontWeight.w600,
        color: const Color(0xffffffff),
      );

  static TextStyle bold16(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w700,
        color: const Color(0xff4EB7F2),
      );

  static TextStyle medium20(BuildContext context) => TextStyle(
        fontFamily: "Montserrat",
        fontSize: getResponiveFontSize(context, baseFontSize: 20),
        fontWeight: FontWeight.w500,
        color: const Color(0xff4EB7F2),
      );
}