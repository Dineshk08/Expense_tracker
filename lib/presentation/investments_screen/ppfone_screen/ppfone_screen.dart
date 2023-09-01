import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class PpfoneScreen extends StatelessWidget {
  const PpfoneScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgGroup941),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        padding: getPadding(top: 14),
                        child: Padding(
                            padding: getPadding(left: 7, bottom: 193),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      onTap: (){onTapArrowleftone(context);},
                                      imagePath: ImageConstant.imgLessthan,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: getPadding(top: 28),
                                          child: Text("Public povident fund:",
                                              style:
                                                  theme.textTheme.titleSmall))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: getHorizontalSize(363),
                                          margin: getMargin(
                                              left: 7, top: 39, right: 13),
                                          child: Text(
                                              "The Public Provident Fund (PPF) is a government-backed savings scheme in India that helps individuals save money for the long term while also earning a fixed and tax-free interest. Here's a simple explanation:",
                                              maxLines: 6,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleLargeBlack900Bold))),
                                  Container(
                                      width: getHorizontalSize(325),
                                      margin: getMargin(
                                          left: 19, top: 46, right: 38),
                                      child: Text(
                                          "What is the Public Provident Fund (PPF)?",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin:
                                          getMargin(left: 3, top: 7, right: 10),
                                      padding: getPadding(
                                          left: 17,
                                          top: 10,
                                          right: 17,
                                          bottom: 10),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(333),
                                          margin: getMargin(bottom: 4),
                                          child: Text(
                                              "The Public Provident Fund (PPF) is a special savings scheme offered by the Government of India to encourage people to save for their long-term financial goals, such as retirement, education, or housing.",
                                              maxLines: 6,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 7, top: 8),
                                      child: Text("How Does It Work?",
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(
                                          left: 3, top: 20, right: 11),
                                      padding: getPadding(
                                          left: 5,
                                          top: 19,
                                          right: 5,
                                          bottom: 19),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(357),
                                          margin: getMargin(bottom: 8),
                                          child: Text(
                                              "You open a PPF account at a designated bank or post office. You can contribute a specific amount of money to your PPF account every year. The minimum contribution per year is set by the government.  The money you contribute earns interest, which is compounded annually. The PPF account has a fixed maturity period of 15 years. After this period, you can either withdraw the funds or extend the account in blocks of 5 years.  The interest earned and the maturity amount are both tax-free.",
                                              maxLines: 14,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 3, top: 16),
                                      child: Text("Key Points:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: getHorizontalSize(358),
                                          margin: getMargin(
                                              left: 10, top: 25, right: 13),
                                          padding: getPadding(
                                              left: 3,
                                              top: 14,
                                              right: 3,
                                              bottom: 14),
                                          decoration: AppDecoration.fillGray7001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderLR40),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(338),
                                                    margin:
                                                        getMargin(right: 14),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "Contribution Limit: ",
                                                              style: CustomTextStyles
                                                                  .titleLargeBlack900_1),
                                                          TextSpan(
                                                              text:
                                                                  "You can contribute a minimum and maximum amount per year, as set by the government. The maximum amount is subject to change and is announced annually. \n",
                                                              style: theme
                                                                  .textTheme
                                                                  .titleLarge),
                                                          TextSpan(
                                                              text:
                                                                  "Interest Rate: ",
                                                              style: CustomTextStyles
                                                                  .titleLargeBlack900_1),
                                                          TextSpan(
                                                              text:
                                                                  "The interest rate for PPF is set by the government and is typically higher than regular savings accounts. It is announced periodically and remains fixed for each financial year.",
                                                              style: theme
                                                                  .textTheme
                                                                  .titleLarge)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.center)),
                                                Container(
                                                    width:
                                                        getHorizontalSize(331),
                                                    margin: getMargin(
                                                        left: 3,
                                                        top: 3,
                                                        right: 17,
                                                        bottom: 5),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "Tax Benefits:",
                                                              style: CustomTextStyles
                                                                  .titleLargeBlack900),
                                                          TextSpan(
                                                              text:
                                                                  "The contributions you make to your PPF account are eligible for tax deductions under Section 80C of the Income Tax Act.",
                                                              style: CustomTextStyles
                                                                  .titleLargeBold_1),
                                                          TextSpan(
                                                              text:
                                                                  " \nWithdrawals:",
                                                              style: CustomTextStyles
                                                                  .titleLargeBlack900),
                                                          TextSpan(
                                                              text:
                                                                  "While the PPF has a fixed maturity period, partial withdrawals are allowed from the 7th year onwards. There are specific rules regarding the amount that can be withdrawn.",
                                                              style: CustomTextStyles
                                                                  .titleLargeBold_1)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.center))
                                              ]))),
                                  Padding(
                                      padding: getPadding(left: 27, top: 19),
                                      child: Text("Benefits:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      width: getHorizontalSize(380),
                                      margin: getMargin(left: 3, top: 15),
                                      padding: getPadding(
                                          left: 5,
                                          top: 14,
                                          right: 5,
                                          bottom: 14),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(361),
                                          margin: getMargin(right: 6),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Tax Advantages: ",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_1),
                                                TextSpan(
                                                    text:
                                                        "Contributions are eligible for tax deductions, and the interest earned and the maturity amount are tax-free.",
                                                    style: theme
                                                        .textTheme.titleLarge),
                                                TextSpan(
                                                    text: " \nSteady Returns: ",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_1),
                                                TextSpan(
                                                    text:
                                                        "PPF offers a fixed and often competitive interest rate. \n",
                                                    style: theme
                                                        .textTheme.titleLarge),
                                                TextSpan(
                                                    text: "Long-Term Savings: ",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_1),
                                                TextSpan(
                                                    text:
                                                        "PPF is designed for long-term goals due to its 15-year maturity period.",
                                                    style: theme
                                                        .textTheme.titleLarge)
                                              ]),
                                              textAlign: TextAlign.center))),
                                  Padding(
                                      padding: getPadding(left: 12, top: 19),
                                      child: Text("Considerations:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(
                                          left: 3, top: 24, right: 23),
                                      padding: getPadding(
                                          left: 14,
                                          top: 8,
                                          right: 14,
                                          bottom: 8),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(327),
                                          margin: getMargin(top: 2),
                                          child: Text(
                                              "PPF is ideal for individuals looking for a safe and stable way to save for long-term financial goals. The contribution limit, interest rate, and withdrawal rules can change based on government announcements. PPF accounts can be extended beyond the initial 15-year term in blocks of 5 years each.",
                                              maxLines: 10,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: getHorizontalSize(359),
                                          margin: getMargin(
                                              left: 9, top: 53, right: 13),
                                          child: Text(
                                              "Remember that PPF is a specific savings scheme available in India. While it offers attractive tax benefits and steady returns, it's important to assess whether it aligns with your financial goals and circumstances before opening an account.",
                                              maxLines: 7,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleLargeBlack900Bold)))
                                ])))))));
  }


  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
