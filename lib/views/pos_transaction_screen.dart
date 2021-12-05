import 'dart:ui';

import 'package:dollarpay/constants/app_constants.dart';
import 'package:dollarpay/views/reprint_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PosTransactionScreen extends StatefulWidget {
  const PosTransactionScreen({Key? key}) : super(key: key);

  @override
  _PosTransactionScreenState createState() => _PosTransactionScreenState();
}

class _PosTransactionScreenState extends State<PosTransactionScreen> {
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
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 540.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: ListView.builder(
                padding: EdgeInsets.only(
                  top: 14.h,
                  left: 22.w,
                  right: 22.w,
                  bottom: 14.h,
                ),
                itemCount: 6,
                itemBuilder: (context, count){
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 7.h,
                    ),
                    child: Container(
                      height: 80.h,
                      width: 330.w,
                      padding: EdgeInsets.only(
                        left:16.w,
                        right: 16.w,
                        top: 6.h,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30.h,
                                    width: 30.h,
                                    decoration: const BoxDecoration(
                                      color: AppColors.buttonColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'ZS',
                                        style: CustomFonts.googleHeaderFont(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14.sp,
                                            color: AppColors.buttonTextColor
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 11.w,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Zaid Sheikh',
                                          style: CustomFonts.googleHeaderFont(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                              color: AppColors.cardColor
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '25/06/2021',
                                          style: CustomFonts.googleHeaderFont(
                                            color: AppColors.buttonColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      )
                                  )
                                ],
                              )
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Sent',
                                      style: CustomFonts.googleHeaderFont(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: AppColors.buttonColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '400',
                                      style: CustomFonts.googleHeaderFont(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.sp,
                                        color: AppColors.cardColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  const Reprint()),
                );
              },
              child: Container(
                height: 52.h,
                width: 137.w,
                margin: EdgeInsets.only(
                  bottom: 18.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(20.r)
                ),
                child: Center(
                  child: Text(
                    'PRINT',
                    style: CustomFonts.googleHeaderFont(
                      fontWeight: FontWeight.w700,
                      fontSize: 30.sp,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 34.h,
              width: 289.w,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                border: Border.all(
                  color: AppColors.cardColor,
                  width: 1
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Pos Transactions',
                        style: CustomFonts.googleHeaderFont(
                          color: AppColors.cardColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.cardColor,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 34.h,
              width: 289.w,
              margin: EdgeInsets.only(
                top: 45.h
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                border: Border.all(
                    color: AppColors.cardColor,
                    width: 1
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Mon-Jan-12-2021',
                        style: CustomFonts.googleHeaderFont(
                          color: AppColors.cardColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
