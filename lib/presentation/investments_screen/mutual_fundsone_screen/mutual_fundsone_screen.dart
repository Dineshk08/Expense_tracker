import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class MutualFundsoneScreen extends StatelessWidget {
  const MutualFundsoneScreen({Key? key})
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
                top: 15,
              ),
              child: Padding(
                padding: getPadding(
                  left: 7,
                  right: 7,
                  bottom: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      onTap: () {
                        onTapArrowleftone(context);
                      },
                      imagePath: ImageConstant.imgLessthan,
                      height: getVerticalSize(50),
                      width: getHorizontalSize(40),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 51,
                        ),
                        child: Text(
                          "Mutual funds",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(360),
                      margin: getMargin(
                        left: 5,
                        top: 16,
                        right: 8,
                      ),
                      child: Text(
                        " Mutual funds are a way for people to pool their money together and invest in a diversified portfolio of stocks, bonds, or other securities. Here's a simple explanation:",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 30,
                      ),
                      child: Text(
                        "What are Mutual Funds?",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(350),
                        margin: getMargin(
                          left: 8,
                          top: 25,
                          right: 17,
                        ),
                        padding: getPadding(
                          all: 6,
                        ),
                        decoration: AppDecoration.fillGray7001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderLR40,
                        ),
                        child: Container(
                          width: getHorizontalSize(332),
                          margin: getMargin(
                            right: 6,
                          ),
                          child: Text(
                            "Mutual funds are investment vehicles that gather money from multiple investors to create a big pool of funds. This pool is managed by professional fund managers who invest it in various assets like stocks, bonds, or a mix of both.",
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                        top: 20,
                      ),
                      child: Text(
                        "How Do Mutual Funds Work?",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 14,
                        top: 15,
                      ),
                      padding: getPadding(
                        left: 9,
                        top: 6,
                        right: 9,
                        bottom: 6,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(337),
                        margin: getMargin(
                          top: 3,
                        ),
                        child: Text(
                          "You buy units/shares of a mutual fund with your investment money. The fund manager uses the pooled money to invest in a variety of assets, spreading the risk. Your returns are based on the performance of these investments.  The fund's value per unit, known as the Net Asset Value (NAV), reflects the overall value of the assets it holds.",
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                        top: 19,
                      ),
                      child: Text(
                        "Key Points:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 4,
                        top: 17,
                      ),
                      padding: getPadding(
                        top: 9,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(366),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Diversification:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Mutual funds offer diversification because your money is invested in multiple assets, reducing the impact of poor performance of any single investment.",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: " \nTypes of Funds:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "There are different types of mutual funds targeting various goals like growth, income, or a mix of both.",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: " \nLiquidity: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Most mutual funds allow you to buy or sell your units at any time (depending on the fund type).",
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
                        left: 19,
                        top: 17,
                      ),
                      child: Text(
                        "Benefits:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 7,
                        top: 12,
                      ),
                      padding: getPadding(
                        left: 4,
                        top: 8,
                        right: 4,
                        bottom: 8,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(358),
                        margin: getMargin(
                          top: 8,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Access to Expertise:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    " Fund managers have experience and expertise in choosing investments.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Diversification: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "You're not dependent on a single investment's success.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Convenience:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Professionals handle the investment decisions, making it easy for you.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Affordability: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "With a relatively small investment, you can get exposure to a diversified portfolio.",
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
                        left: 17,
                        top: 10,
                      ),
                      child: Text(
                        "Considerations:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(339),
                        margin: getMargin(
                          left: 24,
                          top: 18,
                          right: 12,
                        ),
                        padding: getPadding(
                          top: 2,
                          bottom: 2,
                        ),
                        decoration: AppDecoration.fillGray7001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderLR40,
                        ),
                        child: Container(
                          width: getHorizontalSize(333),
                          margin: getMargin(
                            top: 14,
                            right: 5,
                          ),
                          child: Text(
                            "Mutual funds come with fees and expenses that can impact your overall returns. Returns are not guaranteed; they depend on market performance.Different funds carry different levels of risk, depending on their investment strategy.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(370),
                      margin: getMargin(
                        left: 3,
                        top: 9,
                      ),
                      child: Text(
                        "Mutual funds can be a good option for individuals who want to invest in a diversified portfolio without needing to actively manage it themselves. When considering mutual funds, it's important to understand the fund's objectives, risk profile, fees, and past performance. Consulting with a financial advisor can help you choose funds that align with your financial goals and risk tolerance.",
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
  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
