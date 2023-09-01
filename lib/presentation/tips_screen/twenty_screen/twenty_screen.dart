import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TwentyScreen extends StatelessWidget {
  const TwentyScreen({Key? key})
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
        appBar: CustomAppBar(
          leadingWidth: double.maxFinite,
          leading: AppbarImage(
            onTap: (){onTapArrowleftone(context);},
            imagePath: ImageConstant.imgLessthan,
            margin: getMargin(
              left: 8,
              top: 2,
              right: 342,
              bottom: 3,
            ),
          ),
        ),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup886,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 6,
                right: 3,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "50/30/20",
                    style: theme.textTheme.titleSmall,
                  ),
                  Container(
                    width: getHorizontalSize(370),
                    margin: getMargin(
                      top: 35,
                      right: 11,
                    ),
                    child: Text(
                      "The 50/30/20 rule is a simple guideline for managing your finances. It suggests dividing your after-tax income into three main categories:",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeBlack900Bold,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(381),
                    margin: getMargin(
                      top: 35,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 11,
                      right: 8,
                      bottom: 11,
                    ),
                    decoration: AppDecoration.fillGray7001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(328),
                          margin: getMargin(
                            left: 13,
                            right: 22,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Needs (50%): ",
                                  style: CustomTextStyles.titleLargeBlack900_1,
                                ),
                                TextSpan(
                                  text:
                                      "This portion should cover essential expenses like rent or mortgage payments, groceries, utilities, transportation, and other necessary bills. These are things you must pay to maintain your basic quality of life",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(359),
                          margin: getMargin(
                            left: 6,
                            top: 2,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Wants (30%): ",
                                  style: CustomTextStyles.titleLargeBlack900_1,
                                ),
                                TextSpan(
                                  text:
                                      "This category includes non-essential spending on things like dining out, entertainment, shopping for non-essential items, and leisure activities. These are things that make life more enjoyable but aren't absolutely necessary.",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(358),
                          margin: getMargin(
                            left: 1,
                            top: 2,
                            right: 5,
                            bottom: 5,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Savings and Debt Repayment (20%): ",
                                  style: CustomTextStyles.titleLargeBlack900_1,
                                ),
                                TextSpan(
                                  text:
                                      "This portion is dedicated to building your financial security. It can include saving for emergencies, investing for the future, and paying off any debts you might have, like credit card debt or student loans.",
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
                  Container(
                    width: getHorizontalSize(363),
                    margin: getMargin(
                      left: 17,
                      top: 25,
                    ),
                    child: Text(
                      "By following this rule, you aim to ensure that you're covering your essential needs, enjoying some of your wants, and also prioritizing your financial stability and future. It provides a balanced approach to managing your money without overspending or neglecting important savings and debt repayment goals. Remember that while the 50/30/20 rule is a helpful guideline, personal financial situations can vary, so you might need to adjust the percentages to fit your individual needs and goals.",
                      maxLines: 15,
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
    );
  }



  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
