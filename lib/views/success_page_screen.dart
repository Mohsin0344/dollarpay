import 'package:dollarpay/constants/app_constants.dart';
import 'package:dollarpay/views/transaction_summary_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessMessageScreen extends StatefulWidget {
  const SuccessMessageScreen({Key? key}) : super(key: key);

  @override
  _SuccessMessageScreenState createState() => _SuccessMessageScreenState();
}

class _SuccessMessageScreenState extends State<SuccessMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 470.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 112.h,
                  ),
                  Text(
                    'Transaction',
                    style: CustomFonts.googleHeaderFont(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Successful',
                    style: CustomFonts.googleHeaderFont(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 151.h,
                  ),
                  Text(
                    'Thank You',
                    style: CustomFonts.googleHeaderFont(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  const TransactionSummary()),
                );
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
}
