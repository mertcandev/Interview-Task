// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

class ExpenseIncomeBar extends StatefulWidget {
  const ExpenseIncomeBar({Key? key}) : super(key: key);

  @override
  State<ExpenseIncomeBar> createState() => _ExpenseIncomeBarState();
}

class _ExpenseIncomeBarState extends State<ExpenseIncomeBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 33.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      color: Utils.kExpenseIncomeBarColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6)),
                      border: Border.all(
                          color: Utils.kExpenseIncomeBarBorderColor)),
                  child: Center(
                      child: Text(
                    "Expenses",
                    style: TextStyle(
                        color: Utils.kTimePickingBarSelectedTextColor,
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700),
                  )),
                ),
                Container(
                  height: 33.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      color: Utils.kExpenseIncomeBarColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6)),
                      border: Border.all(
                          color: Utils.kExpenseIncomeBarBorderColor)),
                  child: Center(
                      child: Text(
                    "Income",
                    style: TextStyle(
                        color: Utils.kTimePickingBarSelectedTextColor,
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700),
                  )),
                )
              ],
            ));
  }
}
