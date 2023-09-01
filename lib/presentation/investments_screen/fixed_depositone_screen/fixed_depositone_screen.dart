import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class FixedDepositoneScreen extends StatelessWidget {
  const FixedDepositoneScreen({Key? key})
      : super(
          key: key,
        );

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
              image: AssetImage(
                ImageConstant.imgGroup929,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              padding: getPadding(
                top: 16,
              ),
              child: Padding(
                padding: getPadding(
                  left: 6,
                  right: 2,
                  bottom: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      onTap: (){onTapArrowleftone(context);},
                      imagePath: ImageConstant.imgLessthan,
                      height: getSize(40),
                      width: getSize(40),
                      margin: getMargin(
                        left: 9,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 17,
                      ),
                      child: Text(
                        "Fixed deposit",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(370),
                      margin: getMargin(
                        left: 8,
                        top: 26,
                        right: 2,
                      ),
                      child: Text(
                        " A fixed deposit, often referred to as a term deposit or time deposit, is a straightforward way to save and grow your money with a bank. Here's a simple explanation:",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7,
                        top: 16,
                      ),
                      child: Text(
                        " What is a Fixed Deposit?",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(176),
                      width: getHorizontalSize(375),
                      margin: getMargin(
                        left: 3,
                        top: 8,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(175),
                              width: getHorizontalSize(375),
                              decoration: BoxDecoration(
                                color: appTheme.gray700.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(40),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: getHorizontalSize(370),
                              child: Text(
                                "A fixed deposit is a type of account offered by banks where you deposit a lump sum of money for a fixed period (term). During this time, the bank pays you interest on the deposited amount. It's a safe and low-risk way to earn interest on your savings.",
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                        top: 26,
                      ),
                      child: Text(
                        " How Does It Work?",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 3,
                        top: 13,
                        right: 6,
                      ),
                      padding: getPadding(
                        left: 2,
                        top: 7,
                        right: 2,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getVerticalSize(144),
                            width: getHorizontalSize(349),
                            margin: getMargin(
                              top: 3,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    width: getHorizontalSize(318),
                                    child: Text(
                                      "You deposit a specific amount of money (the principal) into a fixed deposit account.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: getHorizontalSize(345),
                                    child: Text(
                                      "You choose the duration of the deposit (term), which could range from a few months to several years.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(140),
                            width: getHorizontalSize(361),
                            margin: getMargin(
                              left: 4,
                              top: 7,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: getHorizontalSize(343),
                                    child: Text(
                                      "The bank agrees to pay you a fixed interest rate on your deposit for the entire term.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: getHorizontalSize(361),
                                    child: Text(
                                      "The interest rate is determined at the start and doesn't change during the term.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(354),
                            margin: getMargin(
                              left: 7,
                              right: 4,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text:
                                        "At the end of the term, you can withdraw both the initial deposit and the accumulated interest.",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                        top: 15,
                      ),
                      child: Text(
                        "Key Points:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(368),
                      margin: getMargin(
                        left: 3,
                        top: 9,
                        right: 10,
                      ),
                      padding: getPadding(
                        left: 5,
                        right: 5,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(349),
                            margin: getMargin(
                              left: 7,
                              top: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Interest Rate: ",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "Fixed deposit interest rates are usually higher than regular savings accounts because you're committing to keeping your money with the bank for a set period.",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(330),
                            margin: getMargin(
                              left: 7,
                              top: 18,
                              right: 18,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Term Length: ",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "The longer you're willing to leave your money untouched, the higher the interest rate may be.",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(344),
                            margin: getMargin(
                              left: 6,
                              top: 17,
                              right: 6,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Penalty for Early Withdrawal: ",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "If you need to take out your money before the term ends, you might face a penalty or receive a lower interest rate.",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(349),
                            margin: getMargin(
                              left: 1,
                              top: 9,
                              right: 5,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Safety: ",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "Fixed deposits are considered safe because they're typically insured by government deposit insurance programs (up to a certain limit).",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(342),
                            margin: getMargin(
                              left: 7,
                              top: 8,
                              right: 6,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Guaranteed Returns: ",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "Since the interest rate is fixed, you know how much you'll earn by the end of the term.",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 17,
                      ),
                      child: Text(
                        " Benefits:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(355),
                      margin: getMargin(
                        top: 4,
                        right: 26,
                      ),
                      padding: getPadding(
                        top: 9,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getVerticalSize(172),
                            width: getHorizontalSize(345),
                            margin: getMargin(
                              top: 1,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: getHorizontalSize(336),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Low Risk: ",
                                            style: CustomTextStyles
                                                .titleLargeBlack900_1,
                                          ),
                                          TextSpan(
                                            text:
                                                "Fixed deposits are safe investments as they are backed by banks and often come with government-backed insurance.",
                                            style: theme.textTheme.titleLarge,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: SizedBox(
                                    width: getHorizontalSize(335),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Steady Returns:",
                                            style: CustomTextStyles
                                                .titleLargeBlack900_1,
                                          ),
                                          TextSpan(
                                            text:
                                                "You'll earn a fixed interest rate, providing predictable returns over the term",
                                            style: theme.textTheme.titleLarge,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(341),
                            margin: getMargin(
                              left: 9,
                              top: 8,
                              right: 4,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Savings Tool:",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        " Fixed deposits can help you set aside money for future needs or goals.",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 53,
                      ),
                      child: Text(
                        "Considerations:",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(343),
                      margin: getMargin(
                        left: 8,
                        top: 41,
                        right: 29,
                      ),
                      padding: getPadding(
                        all: 8,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(321),
                        margin: getMargin(
                          left: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          "While fixed deposits offer safety and predictability, the returns might not be as high as riskier investment options. \nCompare interest rates offered by different banks before choosing a fixed deposit. \nMake sure you can commit to the chosen term, as early withdrawals might lead to reduced returns.",
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(379),
                      margin: getMargin(
                        left: 2,
                        top: 29,
                      ),
                      child: Text(
                        "Fixed deposits are suitable for people who want to save money with minimal risk and prefer knowing exactly how much they'll earn over a specific period. It's essential to assess your financial goals and needs to determine if a fixed deposit aligns with your savings strategy.",
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
