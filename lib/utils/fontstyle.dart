import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/responsive_size.dart';

abstract class Fontstyle {
  static TextStyle Montserrat_regular16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Montserrat_regular12(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: responsive_size(context, fontsize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Montserrat_medium16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Montserrat_semiBold16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Active_Montserrat_semiBold16(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Montserrat_SemiBold20(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsive_size(context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Montserrat_SemiBold24(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: responsive_size(context, fontsize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Active_Montserrat_SemiBold24(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Montserrat_regular14(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: responsive_size(context, fontsize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Active_Montserrat_regular14(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Montserrat_semiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: responsive_size(context, fontsize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle Montserrat_Bold16(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle Montserrat_medium20(context) {
    return TextStyle(
      color: const Color(0xFF7CD87A),
      fontSize: responsive_size(context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}
