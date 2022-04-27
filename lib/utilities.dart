import 'package:flutter/material.dart';

class Utils {
  static const Color kBackgroundColor = Color(0xffFFFFFF);
  static const Color kSearchBoxBorderColor = Color(0xffE0DCDC);
  static const Color kSearchBoxTextColor = Color(0xffAAAAAB);
  static const Color kCurrencySelectButtonColor = Color(0xffF43030);
  static const Color kDateBarLeadingTextColor = Color(0xff48A1DB);
  static const Color kDateBarDateTextColor = Color(0xff747575);
  static const Color kDateBarModifyButtonTextColor = Color(0xff747575);
  static const Color kDateBarModifyButtonBorderColor = Color(0xffE0DCDC);
  static const Color kAllAccountsBoxColor = Color(0xffFF3C68);
  static const Color kPocketMoneyBoxColor = Color(0xff3ECA59);
  static const Color kCreditCardBoxColor = Color(0xff43DDFF);
  static const Color kAllAccountsBoxTextColor = Color(0xffFFFFFF);
  static const Color kAllAccountsBoxBalanceColor = Color(0xffFFFFFF);
  static const Color kDividerColor = Color(0xffC4C4C4);
  static const Color kTimePickingBarBorderColor = Color(0xff48A1DB);
  static const Color kTimePickingBarSelectedColor = Color(0xff48A1DB);
  static const Color kTimePickingBarUnselectedColor = Color(0xffffffff);
  static const Color kTimePickingBarSelectedTextColor = Color(0xffE5E5E5);
  static const Color kTimePickingBarUnselectedTextColor = Color(0xff747575);
  static const Color kBalanceTypePickerColor = Color(0xff48A1DB);
  static const Color kExpenseIncomeSelectedBarColor = Color(0xff48A1DB);
  static const Color kExpenseIncomeUnselectedBarColor = Color(0xffffffff);
  static const Color kExpenseIncomeSelectedTextColor = Color(0xffE5E5E5);
  static const Color kExpenseIncomeUnselectedTextColor = Color(0xff747575);
  static const Color kExpenseIncomeBarBorderColor = Color(0xff48A1DB);
  static const Color kTotalTextColor = Color(0xff000000);
  static const Color kBottomBarButtonColor = Color(0xff395162);
  static const Color kBottomBarIconColor = Color(0xffffffff);
  static const Color kExpenseGridAmountColor = Color(0xff51A9DE);
  static const Color kChartPrimaryColor = Color(0xff48A1DB);
  static const Color kChartSecondaryColor = Color(0xffAAAAAB);
}

class ExpenseCard {
  String? expenseName;
  int? expenseAmount;

  ExpenseCard({
    this.expenseName,
    this.expenseAmount,
  });
}

final List<ExpenseCard> expenseList = [
  ExpenseCard(expenseName: "Grocery", expenseAmount: -10),
  ExpenseCard(expenseName: "Fashion", expenseAmount: -6789),
  ExpenseCard(expenseName: "Furniture", expenseAmount: -45678),
  ExpenseCard(expenseName: "Tax", expenseAmount: -1234555),
  ExpenseCard(expenseName: "Entertain.", expenseAmount: -123456),
  ExpenseCard(expenseName: "PC, IT", expenseAmount: -567890),
  ExpenseCard(expenseName: "Banking", expenseAmount: -4000000),
  ExpenseCard(expenseName: "Car Hire", expenseAmount: -1000000),
];
