// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

class DateBar extends StatefulWidget {
  const DateBar({Key? key}) : super(key: key);

  @override
  State<DateBar> createState() => _DateBarState();
}

class _DateBarState extends State<DateBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Viev as of:",
                  style: TextStyle(
                      fontSize: 16.h,
                      fontWeight: FontWeight.w700,
                      color: Utils.kDateBarLeadingTextColor),
                ),
                SizedBox(width: 10.w),
                Text(
                  "05 Dec 2021",
                  style: TextStyle(
                      fontSize: 16.h,
                      fontWeight: FontWeight.w700,
                      color: Utils.kDateBarDateTextColor),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 18.h,
                  width: 66.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Utils.kDateBarModifyButtonBorderColor),
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
                    "(Modify)",
                    style: TextStyle(
                        color: Utils.kDateBarModifyButtonTextColor,
                        fontSize: 11.h,
                        fontWeight: FontWeight.w700),
                  )),
                )
              ],
            ));
  }
}
