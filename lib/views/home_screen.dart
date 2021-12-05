import 'package:dollarpay/constants/app_constants.dart';
import 'package:dollarpay/views/pos_transaction_screen.dart';
import 'package:dollarpay/views/send_money.dart';
import 'package:dollarpay/views/withdraw_money_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 24.w, top: 32.h, right: 20.w),
              color: AppColors.cardColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 0,
                        child: Container(
                          height: 51.06.h,
                          width: 51.06.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(11.91.r),
                            border: Border.all(
                                color: AppColors.buttonTextColor, width: 1),
                            image: const DecorationImage(
                                image: AssetImage('assets/model.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: SizedBox(
                            height: 50.04.h,
                            width: 115.48.w,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Good Evening!',
                                      style: CustomFontsHome.googleHeaderFont(
                                          color: AppColors.buttonTextColor,
                                          fontSize: 12.27.sp,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Neha Kapoor',
                                      style: CustomFontsHome.googleHeaderFont(
                                          color: AppColors.buttonTextColor,
                                          fontSize: 15.96.sp,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.notification_important,
                            color: AppColors.buttonTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 34.54.h,
                  ),
                  Expanded(
                    child: Container(
                      width: 331.51.w,
                      height: 178.72.h,
                      margin: EdgeInsets.only(
                        bottom: 35.28.h,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(29.14.r)),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10.w,
                          right: 10.w,
                          bottom: 5.h,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 20.w,
                                  ),
                                  child: Text(
                                    'Supper Agent',
                                    style: CustomFontsHome.googleHeaderFont(
                                      color: AppColors.buttonTextColor,
                                      fontSize: 16.76.sp,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 20.w,
                                  ),
                                  child: Text(
                                    'Current Balance',
                                    style: CustomFontsHome.googleHeaderFont(
                                      color: AppColors.hintColor,
                                      fontSize: 16.76.sp,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'NGN 5,75,200',
                                  style: CustomFontsHome.googleHeaderFont(
                                    color: AppColors.buttonTextColor,
                                    fontSize: 29.79.sp,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20.w),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '3655271234',
                                          style:
                                              CustomFontsHome.googleHeaderFont(
                                                  color:
                                                      AppColors.buttonTextColor,
                                                  fontSize: 16.76.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20.w),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '12/09/25',
                                          style:
                                              CustomFontsHome.googleHeaderFont(
                                                  color:
                                                      AppColors.buttonTextColor,
                                                  fontSize: 13.4.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.italic),
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
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 35.h,
                  left: 21.w,
                  right: 21.w,
                ),
                child: Wrap(
                  runSpacing: 29.h,
                  spacing: 40.w,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                          const SendMoney()),
                        );
                      },
                      child: Container(
                        height: 160.h,
                        width: 143.w,
                        decoration: BoxDecoration(
                            color: AppColors.cardColor,
                            borderRadius: BorderRadius.circular(14.89.r)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.send,
                                color: AppColors.buttonTextColor,
                                size: 40.w,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Send Money',
                                style: CustomFontsHome.googleHeaderFont(
                                  color: AppColors.buttonTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.77.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                          const WithdrawMoneyScreen()),
                        );
                      },
                      child: Container(
                        height: 160.h,
                        width: 143.w,
                        decoration: BoxDecoration(
                            color: AppColors.cardColor,
                            borderRadius: BorderRadius.circular(14.89.r)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.monetization_on_outlined,
                                color: AppColors.buttonTextColor,
                                size: 40.w,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Withdraw Money',
                                style: CustomFontsHome.googleHeaderFont(
                                  color: AppColors.buttonTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.77.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 160.h,
                      width: 143.w,
                      decoration: BoxDecoration(
                          color: AppColors.cardColor,
                          borderRadius: BorderRadius.circular(14.89.r)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Icon(
                              Icons.wallet_giftcard_sharp,
                              color: AppColors.buttonTextColor,
                              size: 40.w,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'End Of Day Report',
                              style: CustomFontsHome.googleHeaderFont(
                                color: AppColors.buttonTextColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.77.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 160.h,
                      width: 143.w,
                      decoration: BoxDecoration(
                          color: AppColors.cardColor,
                          borderRadius: BorderRadius.circular(14.89.r)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Icon(
                              Icons.call_received,
                              color: AppColors.buttonTextColor,
                              size: 40.w,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Reprint',
                              style: CustomFontsHome.googleHeaderFont(
                                color: AppColors.buttonTextColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.77.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50.h,
        width: double.infinity,
        color: AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  const PosTransactionScreen()),
                );
              },
              child: const Icon(
                Icons.message,
                color: AppColors.buttonTextColor,
              ),
            ),
            const Icon(
              Icons.message,
              color: AppColors.cardColor,
            ),
            const Icon(
              Icons.message,
              color: AppColors.buttonTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
