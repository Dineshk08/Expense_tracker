import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class RecurringDepositoneScreen extends StatelessWidget {
  const RecurringDepositoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup935),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        padding: getPadding(top: 20),
                        child: Padding(
                            padding:
                                getPadding(left: 10, right: 1, bottom: 130),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      onTap: (){onTapArrowleftone(context);},
                                      imagePath: ImageConstant.imgLessthan,
                                      height: getSize(40),
                                      width: getSize(40),
                                      margin: getMargin(left: 5)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: getPadding(top: 15),
                                          child: Text("Recurring deposit",
                                              style:
                                                  theme.textTheme.titleSmall))),
                                  Container(
                                      width: getHorizontalSize(377),
                                      margin: getMargin(left: 1, top: 24),
                                      child: Text(
                                          " A recurring deposit is a type of savings account offered by banks that allows you to save money regularly in a disciplined manner. It's a straightforward way to accumulate savings over time. Here's a simple explanation:",
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Padding(
                                      padding: getPadding(left: 9, top: 44),
                                      child: Text(
                                          "What is a Recurring Deposit?",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      width: getHorizontalSize(359),
                                      margin:
                                          getMargin(left: 4, top: 8, right: 15),
                                      padding: getPadding(
                                          left: 7, top: 8, right: 7, bottom: 8),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(338),
                                          margin: getMargin(top: 3, right: 5),
                                          child: Text(
                                              "A recurring deposit is like a savings plan where you contribute a fixed amount of money at regular intervals (typically monthly) for a predetermined period. This creates a habit of saving and helps you build up savings gradually.",
                                              maxLines: 7,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 5, top: 51),
                                      child: Text("How Does It Work?",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      height: getVerticalSize(274),
                                      width: getHorizontalSize(362),
                                      margin: getMargin(left: 8, top: 14),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(273),
                                                    width:
                                                        getHorizontalSize(362),
                                                    decoration: BoxDecoration(
                                                        color: appTheme.gray700
                                                            .withOpacity(0.7),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    40))))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(352),
                                                    child: Text(
                                                        "You open a recurring deposit account with a bank. You decide on the amount you want to deposit every month and the duration of the deposit (term). The bank calculates the interest rate applicable to recurring deposits and applies it to your contributions. At the end of the term, you receive the total amount deposited along with the interest earned.",
                                                        maxLines: 10,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: theme.textTheme
                                                            .titleLarge)))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 8, top: 32),
                                      child: Text("Key Points:",
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(top: 3, right: 8),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(367),
                                                margin: getMargin(top: 6),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Fixed Amount: ",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "You contribute the same amount each month throughout the term. \n",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              "Interest Calculation: ",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "Interest is typically compounded quarterly, which means you earn interest on both the principal and the accumulated interest from previous months.",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center)),
                                            Container(
                                                width: getHorizontalSize(348),
                                                margin: getMargin(
                                                    left: 11, right: 10),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "Term Length:",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              " The term can range from a few months to several years, depending on the bank's policies.",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              " \nFlexible Tenures: ",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "Some banks might allow you to choose the term based on your convenience.\n",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              "Penalty for Missed Payments:",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              " If you miss a monthly deposit, there could be penalties or a reduction in interest earned.",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 7, top: 11),
                                      child: Text("Benefits:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      height: getVerticalSize(297),
                                      width: getHorizontalSize(361),
                                      margin: getMargin(left: 5, top: 17),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                    margin: getMargin(left: 9),
                                                    padding: getPadding(
                                                        left: 3,
                                                        top: 12,
                                                        right: 3,
                                                        bottom: 12),
                                                    decoration: AppDecoration
                                                        .fillGray7001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderLR40),
                                                    child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                341),
                                                        margin: getMargin(
                                                            top: 3, right: 2),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "Regular Savings:",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text:
                                                                          " Recurring deposits help you save consistently, even with a modest monthly contribution.",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge),
                                                                  TextSpan(
                                                                      text:
                                                                          " \nDisciplined Saving: ",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text: "I",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge),
                                                                  TextSpan(
                                                                      text:
                                                                          "t encourages a habit of saving since you commit to regular contributions.\n",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge),
                                                                  TextSpan(
                                                                      text:
                                                                          "Steady Returns:",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text:
                                                                          "Interest is calculated on a fixed schedule, ensuring predictable returns.",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge)
                                                                ]),
                                                            textAlign: TextAlign
                                                                .center)))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Considerations:",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_2))
                                          ])),
                                  Container(
                                      margin: getMargin(
                                          left: 3, top: 20, right: 15),
                                      padding: getPadding(
                                          left: 3, top: 6, right: 3, bottom: 6),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: SizedBox(
                                          width: getHorizontalSize(352),
                                          child: Text(
                                              "While recurring deposits offer disciplined savings, the interest rates might be lower than other investment options. It's important to make sure you can commit to the monthly deposits for the chosen term.\nCompare interest rates offered by different banks before opening a recurring deposit account.",
                                              maxLines: 10,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: getHorizontalSize(339),
                                          margin: getMargin(
                                              left: 16, top: 59, right: 22),
                                          child: Text(
                                              "Recurring deposits are suitable for individuals who want to save money on a regular basis without making a large initial investment. They're particularly useful for short-term goals like buying a gadget, planning a vacation, or building an emergency fund. However, if you're looking for higher returns or have a longer-term goal, you might consider exploring other investment options as well.",
                                              maxLines: 12,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleLargeBlack900_2)))
                                ])))))));
  }
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
