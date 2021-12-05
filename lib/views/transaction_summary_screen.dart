import 'package:dollarpay/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionSummary extends StatefulWidget {
  const TransactionSummary({Key? key}) : super(key: key);

  @override
  _TransactionSummaryState createState() => _TransactionSummaryState();
}

class _TransactionSummaryState extends State<TransactionSummary> {
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
        title: Center(
          child: Text(
            'Transaction Summary',
            style: CustomFonts.googleHeaderFont(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.cardColor
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.r),
            topLeft: Radius.circular(30.r)
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(
            top: 36.h,
          ),
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 34.h,
                width: 289.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.cardColor,
                    width: 1
                  ),
                ),
                child: Center(
                  child: Text(
                    'Mon-Jan-12-2021',
                    style: CustomFonts.googleHeaderFont(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.cardColor
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 127.h,
            ),
            Container(
              height: 30.h,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColors.cardColor
                  ),
                  bottom: BorderSide(
                      color: AppColors.cardColor
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'POS Withdrawals',
                  style: CustomFonts.googleHeaderFont(
                    color: AppColors.cardColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              height: 90.h,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: AppColors.cardColor
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Count',
                      style: CustomFonts.googleHeaderFont(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                      ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                          '500',
                        style: CustomFonts.googleHeaderFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 90.h,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: AppColors.cardColor
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Amount',
                        style: CustomFonts.googleHeaderFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '300,000,00.00',
                        style: CustomFonts.googleHeaderFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 30.h,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: AppColors.cardColor
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'POS Transfer',
                  style: CustomFonts.googleHeaderFont(
                    color: AppColors.cardColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              height: 90.h,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: AppColors.cardColor
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Count',
                        style: CustomFonts.googleHeaderFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '300',
                        style: CustomFonts.googleHeaderFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 90.h,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: AppColors.cardColor
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Amount',
                        style: CustomFonts.googleHeaderFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '300,000,00.00',
                        style: CustomFonts.googleHeaderFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 58.h,
            ),
            Align(
              alignment: Alignment.center,
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
                  height: 60.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'Print',
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
      ),
    );
  }
}
