// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

enum TimePick { daily, weekly, monthly, yearly }

class TimePickingBar extends StatefulWidget {
  const TimePickingBar({Key? key}) : super(key: key);

  @override
  State<TimePickingBar> createState() => _TimePickingBarState();
}

class _TimePickingBarState extends State<TimePickingBar> {
  TimePick _selectedTime = TimePick.daily;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTime = TimePick.daily;
                    });
                  },
                  child: Container(
                    height: 33.h,
                    width: 87.w,
                    decoration: BoxDecoration(
                        color: _selectedTime == TimePick.daily
                            ? Utils.kTimePickingBarSelectedColor
                            : Utils.kTimePickingBarUnselectedColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6)),
                        border: Border.all(
                            color: Utils.kTimePickingBarBorderColor)),
                    child: Center(
                        child: Text(
                      "Daily",
                      style: TextStyle(
                          color: _selectedTime == TimePick.daily
                              ? Utils.kTimePickingBarSelectedTextColor
                              : Utils.kTimePickingBarUnselectedTextColor,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTime = TimePick.weekly;
                    });
                  },
                  child: Container(
                    height: 33.h,
                    width: 77.w,
                    decoration: BoxDecoration(
                        color: _selectedTime == TimePick.weekly
                            ? Utils.kTimePickingBarSelectedColor
                            : Utils.kTimePickingBarUnselectedColor,
                        border: Border.all(
                            color: Utils.kTimePickingBarBorderColor)),
                    child: Center(
                        child: Text(
                      "Weekly",
                      style: TextStyle(
                          color: _selectedTime == TimePick.weekly
                              ? Utils.kTimePickingBarSelectedTextColor
                              : Utils.kTimePickingBarUnselectedTextColor,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTime = TimePick.monthly;
                    });
                  },
                  child: Container(
                    height: 33.h,
                    width: 77.w,
                    decoration: BoxDecoration(
                        color: _selectedTime == TimePick.monthly
                            ? Utils.kTimePickingBarSelectedColor
                            : Utils.kTimePickingBarUnselectedColor,
                        border: Border.all(
                            color: Utils.kTimePickingBarBorderColor)),
                    child: Center(
                        child: Text(
                      "Monthly",
                      style: TextStyle(
                          color: _selectedTime == TimePick.monthly
                              ? Utils.kTimePickingBarSelectedTextColor
                              : Utils.kTimePickingBarUnselectedTextColor,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTime = TimePick.yearly;
                    });
                  },
                  child: Container(
                    height: 33.h,
                    width: 87.w,
                    decoration: BoxDecoration(
                        color: _selectedTime == TimePick.yearly ? Utils.kTimePickingBarSelectedColor : Utils.kTimePickingBarUnselectedColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6)),
                        border: Border.all(
                            color: Utils.kTimePickingBarBorderColor)),
                    child: Center(
                        child: Text(
                      "Yearly",
                      style: TextStyle(
                          color: _selectedTime == TimePick.yearly ? Utils.kTimePickingBarSelectedTextColor : Utils.kTimePickingBarUnselectedTextColor,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                )
              ],
            ));
  }
}
