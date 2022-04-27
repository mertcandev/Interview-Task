// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentative_job/utilities.dart';

enum EIBar { expense, income }

class ExpenseIncomeBar extends StatefulWidget {
  const ExpenseIncomeBar({Key? key}) : super(key: key);

  @override
  State<ExpenseIncomeBar> createState() => _ExpenseIncomeBarState();
}

class _ExpenseIncomeBarState extends State<ExpenseIncomeBar> {
  EIBar _eiBarSelection = EIBar.expense;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _eiBarSelection = EIBar.expense;
                    });
                  },
                  child: Container(
                    height: 33.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        color: _eiBarSelection == EIBar.expense
                            ? Utils.kExpenseIncomeSelectedBarColor
                            : Utils.kExpenseIncomeUnselectedBarColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6)),
                        border: Border.all(
                            color: Utils.kExpenseIncomeBarBorderColor)),
                    child: Center(
                        child: Text(
                      "Expenses",
                      style: TextStyle(
                          color: _eiBarSelection == EIBar.expense
                              ? Utils.kExpenseIncomeSelectedTextColor
                              : Utils.kExpenseIncomeUnselectedTextColor,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _eiBarSelection = EIBar.income;
                    });
                  },
                  child: Container(
                    height: 33.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        color: _eiBarSelection == EIBar.income
                            ? Utils.kExpenseIncomeSelectedBarColor
                            : Utils.kExpenseIncomeUnselectedBarColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6)),
                        border: Border.all(
                            color: Utils.kExpenseIncomeBarBorderColor)),
                    child: Center(
                        child: Text(
                      "Income",
                      style: TextStyle(
                          color: _eiBarSelection == EIBar.income
                              ? Utils.kExpenseIncomeSelectedTextColor
                              : Utils.kExpenseIncomeUnselectedTextColor,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                )
              ],
            ));
  }
}
