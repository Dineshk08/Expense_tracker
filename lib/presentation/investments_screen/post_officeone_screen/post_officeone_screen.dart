import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class PostOfficeoneScreen extends StatelessWidget {
  const PostOfficeoneScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgGroup952),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        padding: getPadding(top: 9),
                        child: Padding(
                            padding: getPadding(left: 3, right: 4, bottom: 18),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      onTap: (){onTapArrowleftone(context);},
                                      imagePath: ImageConstant.imgLessthan,
                                      height: getVerticalSize(49),
                                      width: getHorizontalSize(40),
                                      margin: getMargin(left: 5)),
                                  Padding(
                                      padding: getPadding(top: 30),
                                      child: Text("Post office schemes",
                                          style: theme.textTheme.titleSmall)),
                                  Container(
                                      height: getVerticalSize(196),
                                      width: getHorizontalSize(378),
                                      margin: getMargin(left: 2, top: 13),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(378),
                                                    child: Text(
                                                        "Post Office Schemes are a variety of savings and investment options provided by post offices in many countries, including India. They offer safe and accessible ways for people to save money and earn interest. Here's a simple explanation:",
                                                        maxLines: 7,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: CustomTextStyles
                                                            .titleLargeBlack900Bold))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 7),
                                                    child: Text(
                                                        "What are Post Office Schemes?",
                                                        style: CustomTextStyles
                                                            .titleLargeBlack900_2)))
                                          ])),
                                  Container(
                                      margin:
                                          getMargin(left: 9, top: 7, right: 5),
                                      padding: getPadding(
                                          left: 7, top: 8, right: 7, bottom: 8),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: SizedBox(
                                          width: getHorizontalSize(351),
                                          child: Text(
                                              "Post Office Schemes are a range of financial products offered by post offices that allow individuals to save money, earn interest, and achieve various financial goals. These schemes are often considered safe because they are backed by the government.",
                                              maxLines: 8,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 1, top: 12),
                                      child: Text(
                                          "Types of Post Office Schemes:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      width: getHorizontalSize(378),
                                      margin: getMargin(top: 7),
                                      child: Text(
                                          "There are different types of Post Office Schemes, each serving a specific purpose. Here are a few common ones:",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin:
                                          getMargin(left: 5, top: 1, right: 2),
                                      padding: getPadding(
                                          left: 7, top: 5, right: 7, bottom: 5),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(355),
                                                margin: getMargin(top: 14),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Savings Account: ",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "Similar to a regular bank savings account, this offers a safe place to keep your money and earn a modest interest. \n",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              "Recurring Deposit (RD):",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              " A monthly savings plan where you contribute a fixed amount every month, and the money earns interest over time. \n",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              " Fixed Deposit (FD): ",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "A time-bound savings plan where you deposit a lump sum for a fixed period, and it earns interest at a predetermined rate.",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center)),
                                            Container(
                                                width: getHorizontalSize(346),
                                                margin: getMargin(
                                                    left: 5, top: 10, right: 7),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Public Provident Fund (PPF):",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "A long-term savings and investment option with tax benefits. You contribute a fixed amount annually, and it earns interest over a specified period.",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center)),
                                            Container(
                                                width: getHorizontalSize(346),
                                                margin: getMargin(
                                                    left: 6, top: 9, right: 6),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Senior Citizens Savings Scheme (SCSS): ",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "Specifically designed for senior citizens, it offers higher interest rates and regular payouts.\n",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              "Monthly Income Scheme (MIS):",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "This provides a regular source of income with interest payouts on a monthly basis.",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              " \nNational Savings Certificates (NSC):",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "A fixed-term savings option with a fixed interest rate. It's considered a safe investment.",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              " \nKisan Vikas Patra (KVP):",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "A savings certificate where your money doubles in a predetermined period.",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 23, top: 14),
                                      child: Text("Key Points:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin:
                                          getMargin(left: 3, top: 18, right: 4),
                                      padding: getPadding(
                                          left: 10,
                                          top: 4,
                                          right: 10,
                                          bottom: 4),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(348),
                                          margin: getMargin(bottom: 10),
                                          child: Text(
                                              "Post Office Schemes are often preferred by individuals who value safety and stability in their investments. - The interest rates for these schemes are set by the government and are usually competitive. - Many of these schemes offer tax benefits under specific sections of the income tax laws. - Different schemes have different maturity periods and withdrawal rules.",
                                              maxLines: 11,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 15, top: 15),
                                      child: Text("Benefits:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: getHorizontalSize(361),
                                          margin: getMargin(
                                              left: 5, top: 29, right: 13),
                                          padding: getPadding(
                                              left: 14,
                                              top: 8,
                                              right: 14,
                                              bottom: 8),
                                          decoration: AppDecoration.fillGray7001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderLR40),
                                          child: Container(
                                              width: getHorizontalSize(323),
                                              margin: getMargin(
                                                  right: 7, bottom: 13),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "Safe Investments:",
                                                        style: CustomTextStyles
                                                            .titleLargeBlack900_1),
                                                    TextSpan(
                                                        text:
                                                            " Backed by the government, these schemes are considered very secure.  ",
                                                        style: theme.textTheme
                                                            .titleLarge),
                                                    TextSpan(
                                                        text: "Varied Goals:",
                                                        style: CustomTextStyles
                                                            .titleLargeBlack900_1),
                                                    TextSpan(
                                                        text:
                                                            " Different schemes cater to various financial goals, such as short-term savings, retirement planning, and regular income generation.",
                                                        style: theme.textTheme
                                                            .titleLarge)
                                                  ]),
                                                  textAlign:
                                                      TextAlign.center)))),
                                  Padding(
                                      padding: getPadding(left: 29, top: 15),
                                      child: Text("Considerations:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(left: 15, top: 28),
                                      padding: getPadding(
                                          left: 5, top: 7, right: 5, bottom: 7),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(353),
                                          margin: getMargin(top: 12),
                                          child: Text(
                                              "Interest rates and terms can change based on government policies and announcements. While these schemes provide stability, the returns might be lower compared to riskier investment options.",
                                              maxLines: 6,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleLargeBold))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: getHorizontalSize(348),
                                          margin: getMargin(
                                              left: 23, top: 25, right: 8),
                                          child: Text(
                                              "Post Office Schemes can be a good fit for individuals who prioritize safety, steady returns, and government-backed investments. They offer a range of options to suit different financial needs. As always, it's important to assess your financial goals and consult with financial advisors before making investment decisions.",
                                              maxLines: 9,
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
