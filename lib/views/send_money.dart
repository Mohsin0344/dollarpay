import 'dart:ui';

import 'package:dollarpay/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.cardColor,
        ),
        title: Text(
          'Deposit And Transfer',
          style: CustomFonts.googleHeaderFont(
            color: AppColors.cardColor,
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColors.primaryColor,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 160.h,
                  width: 330.w,
                  padding: EdgeInsets.only(
                    top: 19.h
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 15.w
                                ),
                                child: LinearPercentIndicator(
                                  width: 134.w,
                                  lineHeight: 11.95.h,
                                  percent: 0.2,
                                  backgroundColor: AppColors.primaryColor,
                                  progressColor: AppColors.cardColor,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '200,008,000.00',
                                style: CustomFonts.googleHeaderFont(
                                  color: AppColors.cardColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Above is your avialable wallet Balance',
                            style: CustomFonts.googleHeaderFont(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5.w
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                text: 'Wallet trnasfer Limit:',
                                style: CustomFonts.googleHeaderFont(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: AppColors.primaryColor
                                ),
                                children: [
                                  TextSpan(
                                    text: '    200,000',
                                    style: CustomFonts.googleHeaderFont(
                                      color: AppColors.cardColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.sp,
                                    )
                                  )
                                ]
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 5.w
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                  text: 'Transfer Daily Limit:',
                                  style: CustomFonts.googleHeaderFont(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: AppColors.primaryColor
                                  ),
                                  children: [
                                    TextSpan(
                                        text: '    1,000,000',
                                        style: CustomFonts.googleHeaderFont(
                                          color: AppColors.cardColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18.sp,
                                        )
                                    )
                                  ]
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 51.h
                ),
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 45.h,
                        width: 349.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Select Bank',
                            hintStyle: CustomFonts.googleHeaderFont(
                                color: AppColors.hintColor, fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
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
                            suffixIcon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 45.h,
                        width: 349.w,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Customer\'s Account Number',
                              hintStyle: CustomFonts.googleHeaderFont(
                                  color: AppColors.hintColor, fontSize: 18.sp,
                                  fontWeight: FontWeight.w400),
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
                      height: 15.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 45.h,
                        width: 349.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Customer\'s Account Name',
                            hintStyle: CustomFonts.googleHeaderFont(
                                color: AppColors.hintColor, fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
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
                      height: 15.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 45.h,
                        width: 349.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Transaction Description',
                            hintStyle: CustomFonts.googleHeaderFont(
                                color: AppColors.hintColor, fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
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
                      height: 15.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 45.h,
                        width: 349.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Transaction Amount',
                            hintStyle: CustomFonts.googleHeaderFont(
                                color: AppColors.hintColor, fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
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
                      height: 15.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 45.h,
                        width: 349.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Employee ID',
                            hintStyle: CustomFonts.googleHeaderFont(
                                color: AppColors.hintColor, fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
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
                      height: 15.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 45.h,
                        width: 349.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Transaction Pin',
                            hintStyle: CustomFonts.googleHeaderFont(
                                color: AppColors.hintColor, fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
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
                      height: 30.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: (){
                          _showMaterialDialog();
                        },
                        child: Container(
                          height: 54.h,
                          width: 207.w,
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(20.r)
                          ),
                          child: Center(
                            child: Text(
                              'Process',
                              style: CustomFonts.googleHeaderFont(
                                color: AppColors.buttonTextColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return Align(
            alignment: Alignment.center,
            child: Material(
              borderRadius: BorderRadius.circular(30.r),
              child: Container(
                height: 458.h,
                width: 303.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(
                    color: AppColors.cardColor,
                    width: 1
                  )
                ),
                child: ListView(
                  padding: EdgeInsets.only(
                    top: 21.h,
                  ),
                  children: [
                    Center(
                      child: Text(
                        'Sending money to',
                        style: CustomFonts.googleHeaderFont(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 30.h,
                        width: 101.w,
                        child: Center(
                          child: Text(
                            'Mizanali ',
                            style: CustomFonts.googleHeaderFont(
                              fontWeight: FontWeight.w700,
                              fontSize: 22.sp,
                              color: AppColors.cardColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 30.h,
                        width: 158.w,
                        child: Center(
                          child: Text(
                            'Access Bank ',
                            style: CustomFonts.googleHeaderFont(
                                fontWeight: FontWeight.w700,
                                fontSize: 22.sp,
                                color: AppColors.cardColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 30.h,
                        width: 158.w,
                        child: Center(
                          child: Text(
                            '0234551986',
                            style: CustomFonts.googleHeaderFont(
                                fontWeight: FontWeight.w700,
                                fontSize: 22.sp,
                                color: AppColors.cardColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 66.h,
                        width: 248.w,
                        child: Center(
                          child: Text(
                            'Need money to buy tickets for Abu Dhabi GP',
                            style: CustomFonts.googleHeaderFont(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: AppColors.primaryColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 52.h,
                        width: 150.w,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: '20,000',
                            hintStyle: CustomFonts.googleHeaderFont(
                                color: AppColors.cardColor, fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            ),
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
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 69.h,
                        width: 211.w,
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(20.r)
                        ),
                        child: Center(
                          child: Text(
                            'Send money',
                            style: CustomFonts.googleHeaderFont(
                              color: AppColors.buttonTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 30.h,
                        width: 239.w,
                        child: Center(
                          child: Text(
                            'Wallet balance : 100000',
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
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 30.h,
                        width: 239.w,
                        child: Center(
                          child: Text(
                            'Add money to wallet',
                            style: CustomFonts.googleHeaderFont(
                              color: AppColors.buttonColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
