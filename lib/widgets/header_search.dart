// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage("assets/moi.jpg"),
                ),
                SizedBox(width: 8.5.w),
                Expanded(
                  child: Container(
                    height: 35.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Utils.kSearchBoxBorderColor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          Text(
                            "Looking for something?",
                            style: TextStyle(
                                fontSize: 14.h,
                                color: Utils.kSearchBoxTextColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                      height: 35.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ]),
                      child: Center(
                          child: Text(
                        "USD",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.h,
                            color: Utils.kCurrencySelectButtonColor),
                      ))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
