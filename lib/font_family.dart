import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';


class FontFamily {
  FontFamily._();

  static String productSans = "ProductSans";
  static String roboto = "Roboto";
  static String muli = "Muli";

  static TextStyle mulishHeading = GoogleFonts.mulish(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Colors.white,);

  static TextStyle mulishTitleBold1 = GoogleFonts.mulish(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: CustomColors.black,);

  static TextStyle mulishTitleExtraBold1 = GoogleFonts.mulish(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      color: CustomColors.black,);

  static TextStyle mulishTitleRegular2 = GoogleFonts.mulish(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: CustomColors.grey[500],);

  static TextStyle mulishTitleSemiBold2 = GoogleFonts.mulish(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: CustomColors.grey[500],);

  static TextStyle rmDocTiles = GoogleFonts.mulish(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,);

  static TextStyle mulishTitleRegular3 = GoogleFonts.mulish(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: CustomColors.grey[500],);

  static TextStyle mulishTitleBold3 = GoogleFonts.mulish(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: Colors.black,);

  static TextStyle mulishLight(double fontSize,Color color){
    return GoogleFonts.mulish(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color,);
  }

  static TextStyle mulishRegular(double fontSize,Color color){
    return GoogleFonts.mulish(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: color,);
  }

  static TextStyle mulishSemiBold(double fontSize,Color color){
    return GoogleFonts.mulish(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: color,);
  }

  static TextStyle mulishBold(double fontSize,Color color){
    return GoogleFonts.mulish(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color,
    decoration: TextDecoration.none,);
  }

  static TextStyle mulishExtraBold(double fontSize,Color color){
    return GoogleFonts.mulish(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        color: color,);
  }
}
