import 'package:dollarpay/constants/app_constants.dart';
import 'package:dollarpay/views/success_page_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WithdrawMoneyScreen extends StatefulWidget {
  const WithdrawMoneyScreen({Key? key}) : super(key: key);

  @override
  _WithdrawMoneyScreenState createState() => _WithdrawMoneyScreenState();
}

class _WithdrawMoneyScreenState extends State<WithdrawMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.cardColor,
          ),
        ),
        title: Text(
          'Card Withdrawal',
          style: CustomFonts.googleHeaderFont(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.cardColor
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 470.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    top: 145.h,
                    left: 13.w,
                    right: 13.w
                ),
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 46.h,
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
                      height: 78.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 46.h,
                        width: 349.w,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Select Card Type',
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
                                color: AppColors.cardColor,
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 78.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 46.h,
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
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: (){
                _showMaterialDialog();
              },
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 40.h
                ),
                height: 54.h,
                width: 207.w,
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(20.r),
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
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 52.h,
                        width: 303.w,
                        child: Center(
                          child: Text(
                            'You are making a withdrawal from',
                            style: CustomFonts.googleHeaderFont(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 30.h,
                        width: 259.w,
                        child: Center(
                          child: Text(
                            '0234**********551986',
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
                      height: 18.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 48.h,
                        width: 248.w,
                        child: Center(
                          child: Text(
                            '20,000',
                            style: CustomFonts.googleHeaderFont(
                                fontWeight: FontWeight.w700,
                                fontSize: 30.sp,
                                color: AppColors.primaryColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 61.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 27.h,
                        width: 239.w,
                        child: Center(
                          child: Text(
                            'Enter PIN',
                            style: CustomFonts.googleHeaderFont(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: AppColors.buttonColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h
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
                                  color: AppColors.primaryColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              borderSide: const BorderSide(
                                  color: AppColors.primaryColor),
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
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                            const SuccessMessageScreen()),
                          );
                        },
                        child: Container(
                          height: 69.h,
                          width: 211.w,
                          decoration: BoxDecoration(
                              color: AppColors.buttonColor,
                              borderRadius: BorderRadius.circular(20.r)
                          ),
                          child: Center(
                            child: Text(
                              'WITHDRAW',
                              style: CustomFonts.googleHeaderFont(
                                color: AppColors.buttonTextColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20.h,
                    // ),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: SizedBox(
                    //     height: 30.h,
                    //     width: 239.w,
                    //     child: Center(
                    //       child: Text(
                    //         'Wallet balance : 100000',
                    //         style: CustomFonts.googleHeaderFont(
                    //           color: AppColors.cardColor,
                    //           fontWeight: FontWeight.w400,
                    //           fontSize: 18.sp,
                    //         ),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: SizedBox(
                    //     height: 30.h,
                    //     width: 239.w,
                    //     child: Center(
                    //       child: Text(
                    //         'Add money to wallet',
                    //         style: CustomFonts.googleHeaderFont(
                    //           color: AppColors.buttonColor,
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 20.sp,
                    //         ),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
