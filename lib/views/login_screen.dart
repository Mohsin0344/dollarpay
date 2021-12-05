import 'package:dollarpay/constants/app_constants.dart';
import 'package:dollarpay/views/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColors.primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'DOLLARPAY',
                      style: CustomFonts.googleHeaderFont(
                        color: AppColors.textColors,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 35.w,
                  top: 65.h,
                  right: 35.w,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'GOOD MORNING!',
                        style: CustomFonts.googleHeaderFont(
                          color: AppColors.textColors,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'WELCOME BACK',
                        style: CustomFonts.googleHeaderFont(
                          color: AppColors.textColors,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 89.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 50.h,
                        width: 305.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter POS pin',
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
                      height: 75.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        },
                        child: Container(
                          height: 60.h,
                          width: 240.w,
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: CustomFonts.googleHeaderFont(
                                  color: AppColors.buttonTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.sp),
                              textAlign: TextAlign.center,
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
        ],
      ),
    );
  }
}
