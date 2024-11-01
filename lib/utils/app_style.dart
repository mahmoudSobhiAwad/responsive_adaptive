import 'package:flutter/material.dart';

abstract class AppStyle {
  AppStyle({required BuildContext context});
  static const  regualr16=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff064061),
  );
   static const  meduim16=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xff064061),
  );
   static const  semiBold16=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff064061),
  );
  static const  semiBold20=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff064061),
  );
  static const  regular12=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xffAAAAAA),
  );
   static const  semiBold24=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xff4EB7F2),
  );
  static const  regular14=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xffAAAAAA),
  );
  
   static const  semiBold18=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xffffffff),
  );
  static const bold16=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Color(0xff4EB7F2),
  );
  static const medium20=TextStyle(
    fontFamily:"Montserrat" ,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Color(0xff4EB7F2),
  );
}