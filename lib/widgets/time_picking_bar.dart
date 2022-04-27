// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

class TimePickingBar extends StatefulWidget {
  const TimePickingBar({Key? key}) : super(key: key);

  @override
  State<TimePickingBar> createState() => _TimePickingBarState();
}

class _TimePickingBarState extends State<TimePickingBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 33.h,
                  width: 87.w,
                  decoration: BoxDecoration(
                      color: Utils.kTimePickingBarSelectedColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6)),
                      border:
                          Border.all(color: Utils.kTimePickingBarBorderColor)),
                  child: Center(
                      child: Text(
                    "Daily",
                    style: TextStyle(
                        color: Utils.kTimePickingBarSelectedTextColor,
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                Container(
                  height: 33.h,
                  width: 77.w,
                  decoration: BoxDecoration(
                      color: Utils.kTimePickingBarUnselectedColor,
                      border:
                          Border.all(color: Utils.kTimePickingBarBorderColor)),
                  child: Center(
                      child: Text(
                    "Weekly",
                    style: TextStyle(
                        color: Utils.kTimePickingBarUnselectedTextColor,
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                Container(
                  height: 33.h,
                  width: 77.w,
                  decoration: BoxDecoration(
                      color: Utils.kTimePickingBarUnselectedColor,
                      border:
                          Border.all(color: Utils.kTimePickingBarBorderColor)),
                  child: Center(
                      child: Text(
                    "Monthly",
                    style: TextStyle(
                        color: Utils.kTimePickingBarUnselectedTextColor,
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                Container(
                  height: 33.h,
                  width: 87.w,
                  decoration: BoxDecoration(
                      color: Utils.kTimePickingBarUnselectedColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6)),
                      border:
                          Border.all(color: Utils.kTimePickingBarBorderColor)),
                  child: Center(
                      child: Text(
                    "Yearly",
                    style: TextStyle(
                        color: Utils.kTimePickingBarUnselectedTextColor,
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700),
                  )),
                )
              ],
            ));
  }
}
