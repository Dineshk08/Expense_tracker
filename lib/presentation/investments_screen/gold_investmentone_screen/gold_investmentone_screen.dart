import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class GoldInvestmentoneScreen extends StatelessWidget {
  const GoldInvestmentoneScreen({Key? key})
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
                ImageConstant.imgGroup923,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              padding: getPadding(
                top: 20,
              ),
              child: Padding(
                padding: getPadding(
                  left: 7,
                  right: 7,
                  bottom: 42,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      onTap: (){onTapArrowleftone(context);}
                      ,
                      imagePath: ImageConstant.imgLessthan,
                      height: getSize(40),
                      width: getSize(40),
                      margin: getMargin(
                        left: 8,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Gold investment",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(369),
                      margin: getMargin(
                        left: 4,
                        top: 22,
                        right: 1,
                      ),
                      child: Text(
                        "Gold investment refers to buying and owning gold with the goal of making a profit over time. Gold is a precious metal that has been valued for centuries and is considered a safe-haven asset. Here's a simple breakdown of gold investment:",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeOnErrorContainer,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                        top: 21,
                      ),
                      child: Text(
                        " Why Invest in Gold?",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 5,
                        top: 5,
                        right: 1,
                      ),
                      padding: getPadding(
                        left: 5,
                        top: 10,
                        right: 5,
                        bottom: 10,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(356),
                        margin: getMargin(
                          top: 7,
                        ),
                        child: Text(
                          "Gold is often seen as a store of value and a hedge against economic uncertainty. It tends to hold its value even when other investments, like stocks or currencies, might be declining in uncertain times.",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeBold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 16,
                      ),
                      child: Text(
                        "Forms of Gold Investment:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 5,
                        top: 6,
                        right: 1,
                      ),
                      padding: getPadding(
                        left: 1,
                        top: 9,
                        right: 1,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(360),
                        margin: getMargin(
                          bottom: 17,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Physical Gold: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "This involves buying actual gold items like coins, bars, or jewelry. You own the physical metal and store it securely, either at home or in a safe deposit box. \n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Gold ETFs (Exchange-Traded Funds):",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    " These are investment funds that own and track the price of gold. You buy shares of the ETF, which represent a portion of the gold held by the fund.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Gold Mining Stocks: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "You invest in companies that mine for gold. The value of these stocks can be influenced by both the price of gold and the company's performance.",
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 37,
                      ),
                      child: Text(
                        " Forms of Gold Investment:",
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 2,
                        top: 11,
                        right: 4,
                      ),
                      padding: getPadding(
                        left: 11,
                        top: 6,
                        right: 11,
                        bottom: 6,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(340),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Physical Gold: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "This involves buying actual gold items like coins, bars, or jewelry. You own the physical metal and store it securely, either at home or in a safe deposit box.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Gold ETFs (Exchange-Traded Funds):",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "These are investment funds that own and track the price of gold. You buy shares of the ETF, which represent a portion of the gold held by the fund. \n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Gold Mining Stocks:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "You invest in companies that mine for gold. The value of these stocks can be influenced by both the price of gold and the company's performance",
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 35,
                      ),
                      child: Text(
                        "Cons of Gold Investment:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                        top: 23,
                      ),
                      child: Text(
                        " Factors Affecting Gold Prices:",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(330),
                      margin: getMargin(
                        left: 11,
                        top: 16,
                        right: 32,
                      ),
                      padding: getPadding(
                        left: 4,
                        top: 7,
                        right: 4,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(315),
                        margin: getMargin(
                          right: 5,
                          bottom: 12,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Supply and Demand: ",
                                style: CustomTextStyles.titleLargeBlack900,
                              ),
                              TextSpan(
                                text:
                                    "When demand for gold increases (e.g., during economic uncertainty), prices tend to rise.",
                                style: CustomTextStyles.titleLargeBold_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 40,
                          top: 23,
                          right: 49,
                        ),
                        padding: getPadding(
                          left: 23,
                          top: 5,
                          right: 23,
                          bottom: 5,
                        ),
                        decoration: AppDecoration.fillGray7001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderLR40,
                        ),
                        child: Container(
                          width: getHorizontalSize(236),
                          margin: getMargin(
                            top: 6,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "No Income: ",
                                  style: CustomTextStyles.titleLargeBlack900_1,
                                ),
                                TextSpan(
                                  text:
                                      "Gold doesn't generate any income or dividends like stocks or bonds do. ",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 32,
                        top: 22,
                        right: 45,
                      ),
                      padding: getPadding(
                        left: 6,
                        top: 9,
                        right: 6,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(281),
                        margin: getMargin(
                          top: 6,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Volatility: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "While it's generally stable, the price of gold can still fluctuate over time.",
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 32,
                          top: 27,
                          right: 41,
                        ),
                        padding: getPadding(
                          left: 13,
                          top: 7,
                          right: 13,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.fillGray7001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderLR40,
                        ),
                        child: Container(
                          width: getHorizontalSize(270),
                          margin: getMargin(
                            bottom: 2,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Storage and Costs: ",
                                  style: CustomTextStyles.titleLargeBlack900_1,
                                ),
                                TextSpan(
                                  text:
                                      "Physical gold requires secure storage, which can incur additional costs",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 26,
                        top: 40,
                        right: 46,
                      ),
                      padding: getPadding(
                        left: 1,
                        top: 10,
                        right: 1,
                        bottom: 10,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(297),
                        margin: getMargin(
                          bottom: 4,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Geopolitical Events",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    ":Political tensions can drive investors to seek the safety of gold.",
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 6,
                        top: 40,
                        right: 9,
                      ),
                      padding: getPadding(
                        left: 14,
                        top: 5,
                        right: 14,
                        bottom: 5,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(330),
                        margin: getMargin(
                          top: 1,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Interest Rates:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "When interest rates are low, gold can become more attractive because it doesn't offer a yield like interest-bearing assets",
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 31,
                      ),
                      child: Text(
                        "Long-Term Perspective:",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(103),
                        width: getHorizontalSize(338),
                        margin: getMargin(
                          top: 17,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(102),
                                width: getHorizontalSize(338),
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
                                width: getHorizontalSize(318),
                                child: Text(
                                  "Gold investment is often considered a long-term strategy, as its value can take time to appreciate significantly",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(373),
                      margin: getMargin(
                        top: 24,
                      ),
                      child: Text(
                        "Remember that all investments carry risks, and it's important to do your research or consult a financial advisor before making any investment decisions. The suitability of gold as an investment depends on your financial goals, risk tolerance, and overall investment strategy.",
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
