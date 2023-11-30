import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

loading(){
  return Center(
    child: SizedBox(
      height: 100.sp,
      width: 100.sp,
      child: LiquidCircularProgressIndicator(
        value: 0.7,
        valueColor: const AlwaysStoppedAnimation(Colors.lightBlue,),
        backgroundColor: Colors.white,
        direction: Axis.vertical,
        center: const Text("Loading...",style: TextStyle(color: Colors.white),),
      ),
    ),
  );
}