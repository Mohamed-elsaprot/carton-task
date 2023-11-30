import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppColors {
  static const red =Colors.redAccent;
  static const grey =Colors.black38;
  static const white =Colors.white38;
}

abstract class Style {
  static boldText({required String text,double size=20,FontWeight fontWeight=FontWeight.bold,Color color=Colors.black45}){
    return Text(text,style: TextStyle(fontWeight: fontWeight,fontSize: size.sp,color: color),);
  }
}