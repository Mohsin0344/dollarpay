import 'dart:ui';

import 'package:dollarpay/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Reprint extends StatefulWidget {
  const Reprint({Key? key}) : super(key: key);

  @override
  _ReprintState createState() => _ReprintState();
}

class _ReprintState extends State<Reprint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.cardColor,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Center(
          child: Text(
            'Reprint',
            style: CustomFonts.googleHeaderFont(
              color: AppColors.cardColor,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          )
        ),
        child: ListView(
          padding: EdgeInsets.only(
            top: 107.h,
          ),
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 55.h,
                width: 263.w,
                child: Center(
                  child: Text(
                    'Kindly use the below botton to print last transaction',
                    style: CustomFonts.googleHeaderFont(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 41.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60.h,
                width: 295.87.w,
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(20.r)
                ),
                child: Center(
                  child: Text(
                    'Last Transaction',
                    style: CustomFonts.googleHeaderFont(
                      fontWeight: FontWeight.w700,
                      fontSize: 28.sp,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 82.h,
                width: 263.w,
                child: Center(
                  child: Text(
                    'Please not that you can also '
                        'find transaction ref in your app transaction history',
                    style: CustomFonts.googleHeaderFont(
                      color: AppColors.cardColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: SizedBox(
                height: 50.h,
                width: 305.w,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Please Enter Transaction Ref',
                    hintStyle: CustomFonts.googleHeaderFont(
                        color: AppColors.hintColor, fontSize: 18.sp),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.h, horizontal: 18.w),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(
                          color: AppColors.buttonColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(
                          color: AppColors.buttonColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60.h,
                width: 240.w,
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(20.r)
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: CustomFonts.googleHeaderFont(
                      color: AppColors.buttonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 28.sp,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
