import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:tentative_job/utilities.dart';

class ExpensesGrid extends StatefulWidget {
  @override
  State<ExpensesGrid> createState() => _ExpensesGridState();
}

class _ExpensesGridState extends State<ExpensesGrid> {
  Map<String, double> chartMap = {"remain": 100, "balance": 150};

  List<Color> colorList = [
    Utils.kChartSecondaryColor,
    Utils.kChartPrimaryColor
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context) => Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemCount: expenseList.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 92.h,
                            width: 72.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5,
                                      offset: Offset(0, 3))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(
                                    "${expenseList[index].expenseName}",
                                    style: TextStyle(
                                      fontSize: 14.h,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "${expenseList[index].expenseAmount}",
                                    style: TextStyle(
                                        fontSize: 14.h,
                                        color: Utils.kExpenseGridAmountColor),
                                  ),
                                  PieChart(
                                    dataMap: chartMap,
                                    colorList: colorList,
                                    chartRadius: 25.h,
                                    ringStrokeWidth: 2,
                                    chartType: ChartType.ring,
                                    legendOptions:
                                        const LegendOptions(showLegends: false),
                                    chartValuesOptions:
                                        const ChartValuesOptions(
                                            showChartValues: false),
                                    animationDuration:
                                        const Duration(seconds: 3),
                                        initialAngleInDegree: 90.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ));
  }
}
