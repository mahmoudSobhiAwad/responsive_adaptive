import 'package:flutter/material.dart';

double getResponiveFontSize(BuildContext context,{required double baseFontSize}){
 double scaleFactor=getScaleFactor(context: context);
 double responsiveFontSize=scaleFactor*baseFontSize;
  double minWidth=0.8*baseFontSize;
  double maxWidth=1.2*baseFontSize;
  return responsiveFontSize.clamp(minWidth, maxWidth);
}

double getScaleFactor({required  context}) {
 double screenWidth=MediaQuery.sizeOf(context).width;
 if(screenWidth<600){

  return screenWidth/400;
 }
 else if(screenWidth<900){

  return screenWidth/700;
 }
 else{
  return screenWidth/1000;
 }
}