// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

class BalanceTypePicker extends StatefulWidget {
  const BalanceTypePicker({Key? key}) : super(key: key);

  @override
  State<BalanceTypePicker> createState() => _BalanceTypePickerState();
}

class _BalanceTypePickerState extends State<BalanceTypePicker> {
  bool checkVisibility = false;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      builder: (context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 80,
              height: 80.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Utils.kBalanceTypePickerColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                    ),
                    Visibility(
                      visible: true,
                      child: Icon(
                        Icons.check,
                        size: 15.h,
                        color: Utils.kAllAccountsBoxColor,
                      ),
                    )
                  ]),
                  SizedBox(height: 5.h),
                  Text(
                    "Self",
                    style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700,
                        color: Utils.kAllAccountsBoxTextColor),
                  ),
                  SizedBox(height: 17.h)
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              width: 80,
              height: 80.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Utils.kBalanceTypePickerColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                    ),
                    Visibility(
                      visible: checkVisibility,
                      child: Icon(
                        Icons.check,
                        size: 15.h,
                        color: Utils.kAllAccountsBoxColor,
                      ),
                    )
                  ]),
                  SizedBox(height: 5.h),
                  Text(
                    "Family",
                    style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700,
                        color: Utils.kAllAccountsBoxTextColor),
                  ),
                  SizedBox(height: 17.h)
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              width: 80,
              height: 80.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Utils.kBalanceTypePickerColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                    ),
                    Visibility(
                      visible: checkVisibility,
                      child: Icon(
                        Icons.check,
                        size: 15.h,
                        color: Utils.kAllAccountsBoxColor,
                      ),
                    )
                  ]),
                  SizedBox(height: 5.h),
                  Text(
                    "Start-up",
                    style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700,
                        color: Utils.kAllAccountsBoxTextColor),
                  ),
                  SizedBox(height: 17.h)
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              width: 80,
              height: 80.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Utils.kBalanceTypePickerColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                    ),
                    Visibility(
                      visible: checkVisibility,
                      child: Icon(
                        Icons.check,
                        size: 15.h,
                        color: Utils.kAllAccountsBoxColor,
                      ),
                    )
                  ]),
                  SizedBox(height: 5.h),
                  Text(
                    "Work",
                    style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700,
                        color: Utils.kAllAccountsBoxTextColor),
                  ),
                  SizedBox(height: 17.h)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
