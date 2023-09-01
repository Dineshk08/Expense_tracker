import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class GoldBondsoneScreen extends StatelessWidget {
  const GoldBondsoneScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgGroup1018),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        padding: getPadding(top: 17),
                        child: Padding(
                            padding: getPadding(left: 5, right: 1, bottom: 123),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    onTap: () {
                                      onTapArrowleftone(context);
                                    },
                                      imagePath: ImageConstant.imgLessthan,
                                      height: getVerticalSize(49),
                                      width: getHorizontalSize(40)),
                                  Padding(
                                      padding: getPadding(top: 31),
                                      child: Text("Gold bonds",
                                          style: theme.textTheme.titleSmall)),
                                  Container(
                                      width: getHorizontalSize(375),
                                      margin: getMargin(top: 14, right: 8),
                                      child: Text(
                                          "Gold bonds, also known as Sovereign Gold Bonds (SGBs), are a way to invest in gold without owning physical gold. They are issued by the government and provide a way for people to invest in gold while earning interest. Here's a simple explanation:",
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Padding(
                                      padding: getPadding(left: 8, top: 11),
                                      child: Text("What are Gold Bonds (SGBs)?",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: getVerticalSize(252),
                                          width: getHorizontalSize(341),
                                          margin: getMargin(top: 16),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            244),
                                                        width:
                                                            getHorizontalSize(
                                                                341),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray700
                                                                .withOpacity(
                                                                    0.7),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        40))))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                318),
                                                        child: Text(
                                                            "Gold bonds are investment instruments issued by the government, allowing individuals to invest in gold without actually owning physical gold. When you buy a gold bond, you're essentially lending money to the government, and in return, you receive the equivalent value in gold.",
                                                            maxLines: 10,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge)))
                                              ]))),
                                  Padding(
                                      padding: getPadding(left: 16, top: 7),
                                      child: Text("How Do Gold Bonds Work?",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      height: getVerticalSize(373),
                                      width: getHorizontalSize(375),
                                      margin: getMargin(top: 7),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(369),
                                                    width:
                                                        getHorizontalSize(375),
                                                    decoration: BoxDecoration(
                                                        color: appTheme.gray700
                                                            .withOpacity(0.7),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    40))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(368),
                                                    child: Text(
                                                        "The government announces a series of Sovereign Gold Bonds with specific issuance dates. Investors can buy these bonds from banks, financial institutions, or through authorized channels during the issuance period. The price of the bond is usually linked to the current market price of gold.  When you buy a gold bond, you're investing in a certain amount of gold (denominated in grams).  The bond has a fixed tenure, typically ranging from 5 to 8 years. The bonds offer a fixed interest rate, payable semi-annually.",
                                                        maxLines: 15,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: theme.textTheme
                                                            .titleLarge)))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 16, top: 14),
                                      child: Text("Key Points:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: getVerticalSize(521),
                                          width: getHorizontalSize(362),
                                          margin: getMargin(top: 10),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            521),
                                                        width:
                                                            getHorizontalSize(
                                                                362),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray700
                                                                .withOpacity(
                                                                    0.7),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        40))))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                351),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "Gold Investment: ",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text:
                                                                          "Gold bonds offer exposure to the price movements of gold without needing to physically own or store gold.",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge),
                                                                  TextSpan(
                                                                      text:
                                                                          " \nInterest:",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text:
                                                                          " In addition to the potential appreciation in gold value, these bonds pay regular interest, providing an additional source of income.",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge),
                                                                  TextSpan(
                                                                      text:
                                                                          " \nGovernment Backing:",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text:
                                                                          " Since these bonds are issued by the government, they are considered a safe investment.",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge),
                                                                  TextSpan(
                                                                      text:
                                                                          " \nRedemption:",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text:
                                                                          "At the end of the bond's tenure, you'll receive the equivalent value of the invested gold in cash. \n",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge),
                                                                  TextSpan(
                                                                      text:
                                                                          "Tradability: ",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBlack900_1),
                                                                  TextSpan(
                                                                      text:
                                                                          "Some of these bonds are listed on stock exchanges, making them tradeable before maturity.",
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleLarge)
                                                                ]),
                                                            textAlign: TextAlign
                                                                .center)))
                                              ]))),
                                  Padding(
                                      padding: getPadding(left: 17, top: 12),
                                      child: Text("Benefits:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(left: 6, top: 19),
                                      padding: getPadding(
                                          left: 10,
                                          top: 7,
                                          right: 10,
                                          bottom: 7),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(356),
                                          margin: getMargin(top: 2),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Gold Exposure:",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_1),
                                                TextSpan(
                                                    text:
                                                        "You can invest in gold without the hassles of buying, storing, or selling physical gold.",
                                                    style: theme
                                                        .textTheme.titleLarge),
                                                TextSpan(
                                                    text: "Interest Income:",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_1),
                                                TextSpan(
                                                    text:
                                                        " Bonds provide regular interest income in addition to any potential gains from gold price appreciation.\n",
                                                    style: theme
                                                        .textTheme.titleLarge),
                                                TextSpan(
                                                    text: "Government Backing:",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_1),
                                                TextSpan(
                                                    text:
                                                        "Government-backed investments are generally considered safe.\n",
                                                    style: theme
                                                        .textTheme.titleLarge),
                                                TextSpan(
                                                    text: "Liquidity: ",
                                                    style: CustomTextStyles
                                                        .titleLargeBlack900_1),
                                                TextSpan(
                                                    text:
                                                        "Some bonds can be traded on stock exchanges, providing liquidity before maturity.",
                                                    style: theme
                                                        .textTheme.titleLarge)
                                              ]),
                                              textAlign: TextAlign.center))),
                                  Padding(
                                      padding: getPadding(left: 12, top: 15),
                                      child: Text("Considerations:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      height: getVerticalSize(230),
                                      width: getHorizontalSize(367),
                                      margin: getMargin(left: 6, top: 20),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(226),
                                                    width:
                                                        getHorizontalSize(367),
                                                    decoration: BoxDecoration(
                                                        color: appTheme.gray700
                                                            .withOpacity(0.7),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    40))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(343),
                                                    child: Text(
                                                        "The value of gold bonds is influenced by both the price of gold and the interest rate offered. The interest earned is taxable, and the capital gains tax depends on whether you sell the bond before maturity. Bond prices can fluctuate based on changes in interest rates and gold prices.",
                                                        maxLines: 9,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: theme.textTheme
                                                            .titleLarge)))
                                          ])),
                                  Container(
                                      width: getHorizontalSize(376),
                                      margin:
                                          getMargin(left: 2, top: 14, right: 5),
                                      child: Text(
                                          "Gold bonds can be a suitable investment option for individuals who want to diversify their portfolio, invest in gold, and earn a regular income from their investments. However, as with any investment, it's important to understand the terms, risks, and tax implications before investing. Consulting a financial advisor can help you make informed decisions based on your financial goals and circumstances.",
                                          maxLines: 11,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900Bold))
                                ])))))));
  }
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}