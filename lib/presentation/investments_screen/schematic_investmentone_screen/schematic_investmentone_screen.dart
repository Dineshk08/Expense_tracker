import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class SchematicInvestmentoneScreen extends StatelessWidget {
  const SchematicInvestmentoneScreen({Key? key})
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
                ImageConstant.imgGroup1018,
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
                  left: 5,
                  right: 10,
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      onTap: (){
                        onTapArrowleftone(context);
                      },
                      imagePath: ImageConstant.imgLessthan,
                      height: getVerticalSize(54),
                      width: getHorizontalSize(40),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 33,
                        ),
                        child: Text(
                          "Schematic investment plan",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(349),
                        margin: getMargin(
                          left: 15,
                          top: 14,
                          right: 10,
                        ),
                        child: Text(
                          "I believe you might be referring to a systematic investment plan (SIP). A systematic investment plan is a way to invest money regularly in mutual funds in a structured manner. Here's a simple explanation:",
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeBlack900Bold,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(363),
                      margin: getMargin(
                        left: 6,
                        top: 7,
                        right: 4,
                      ),
                      child: Text(
                        "What is a Systematic Investment Plan (SIP)?",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 2,
                        top: 15,
                      ),
                      padding: getPadding(
                        left: 8,
                        top: 7,
                        right: 8,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(353),
                        margin: getMargin(
                          bottom: 13,
                        ),
                        child: Text(
                          "A systematic investment plan (SIP) is an investment strategy where you invest a fixed amount of money at regular intervals (usually monthly) in a mutual fund. It helps you build a portfolio over time by making small contributions on a consistent basis.",
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7,
                        top: 22,
                      ),
                      child: Text(
                        "How Does SIP Work?",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 14,
                        top: 22,
                      ),
                      padding: getPadding(
                        left: 11,
                        top: 8,
                        right: 11,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(337),
                        child: Text(
                          "You choose a mutual fund in which you want to invest. Mutual funds pool money from multiple investors to invest in a diversified portfolio of stocks, bonds, or other assets. You decide the amount you want to invest each month.The mutual fund company deducts this fixed amount from your bank account at the chosen interval and uses it to buy units of the mutual fund on your behalf.Over time, you accumulate more units of the mutual fund as you keep investing regularly.",
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7,
                        top: 43,
                      ),
                      child: Text(
                        "Key Points:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 5,
                        top: 1,
                        right: 6,
                      ),
                      padding: getPadding(
                        left: 4,
                        top: 9,
                        right: 4,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(353),
                        margin: getMargin(
                          top: 5,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Consistency:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "SIP encourages regular and disciplined investing, regardless of market fluctuations.",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: " \nRupee Cost Averaging:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Since you're buying units at different market prices, you automatically buy more units when prices are lower and fewer units when prices are higher. This helps average out the cost of investment.\n ",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Convenience:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "SIP automates the investment process, making it easy to invest without the need for constant monitoring.",
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
                        left: 7,
                        top: 40,
                      ),
                      child: Text(
                        "Benefits:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 19,
                        right: 6,
                      ),
                      padding: getPadding(
                        left: 7,
                        top: 1,
                        right: 7,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(350),
                        margin: getMargin(
                          bottom: 15,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Disciplined Investing:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "SIP encourages a habit of saving and investing regularly.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Mitigates Timing Risk:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Investing at regular intervals reduces the impact of market volatility on your investments. \n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Affordable:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    " SIP allows you to start investing with a small amount, making it accessible for many investors. \n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Diversification:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Through mutual funds, you can get exposure to a diversified portfolio even with a small investment",
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
                        left: 2,
                        top: 24,
                      ),
                      child: Text(
                        "Considerations:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 16,
                        right: 6,
                      ),
                      padding: getPadding(
                        left: 2,
                        top: 10,
                        right: 2,
                        bottom: 10,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(365),
                        margin: getMargin(
                          bottom: 13,
                        ),
                        child: Text(
                          "Mutual funds and SIPs come with risks, as returns are subject to market performance.  Choose mutual funds that align with your financial goals and risk tolerance. Past performance is not a guarantee of future results.",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(365),
                      margin: getMargin(
                        left: 7,
                        top: 58,
                        right: 3,
                      ),
                      child: Text(
                        "A systematic investment plan (SIP) is a popular way to start investing in mutual funds, especially for individuals who want to build their investments over time without making a large initial contribution. It's important to do your research or consult with a financial advisor to choose the right mutual funds and investment strategy based on your financial goals.",
                        maxLines: 11,
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
