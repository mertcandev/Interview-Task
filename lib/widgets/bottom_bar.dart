// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context) => Padding(
              padding: EdgeInsets.only(bottom: 5, top: 5.h),
              child: Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 48.h,
                      width: 48.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Utils.kBottomBarButtonColor),
                      child: Icon(
                        Icons.pie_chart,
                        color: Utils.kBottomBarIconColor,
                        size: 23.h,
                      ),
                    ),
                    Container(
                      height: 55.h,
                      width: 55.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Utils.kBottomBarButtonColor),
                      child: Icon(
                        Icons.tune,
                        color: Utils.kBottomBarIconColor,
                        size: 25.h,
                      ),
                    ),
                    Container(
                      height: 72.h,
                      width: 72.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Utils.kBottomBarButtonColor),
                      child: Icon(Icons.add_rounded,
                          color: Utils.kBottomBarIconColor, size: 40.h),
                    ),
                    Container(
                      height: 55.h,
                      width: 55.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Utils.kBottomBarButtonColor),
                      child: Icon(
                        Icons.search,
                        color: Utils.kBottomBarIconColor,
                        size: 25.h,
                      ),
                    ),
                    Container(
                      height: 48.h,
                      width: 48.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Utils.kBottomBarButtonColor),
                      child: Icon(Icons.cloud,
                          color: Utils.kBottomBarIconColor, size: 22.h),
                    )
                  ],
                ),
              ),
            ));
  }
}
