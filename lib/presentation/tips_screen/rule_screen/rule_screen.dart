import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RuleScreen extends StatelessWidget {
  const RuleScreen({Key? key})
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
          height: getVerticalSize(71),
          leadingWidth: double.maxFinite,
          leading: AppbarImage(
             onTap: (){onTapArrowleftone(context);},
            imagePath: ImageConstant.imgLessthan,
            margin: getMargin(
              left: 5,
              right: 345,
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
            padding: getPadding(
              top: 13,
            ),
            child: Padding(
              padding: getPadding(
                left: 8,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "20 4 10 rule",
                    style: theme.textTheme.titleSmall,
                  ),
                  Container(
                    width: getHorizontalSize(377),
                    margin: getMargin(
                      top: 53,
                    ),
                    child: Text(
                      "The \"20-4-10 rule\" is a guideline to consider when you're purchasing a car. It suggests how much you might want to put down as a down payment, the maximum loan term, and the maximum percentage of your income that should go towards your car-related expenses. Here's a simple explanation:",
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeBlack900_2,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 22,
                      right: 7,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 9,
                      right: 8,
                      bottom: 9,
                    ),
                    decoration: AppDecoration.fillGray7001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR40,
                    ),
                    child: SizedBox(
                      width: getHorizontalSize(353),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "20% Down Payment:",
                              style: CustomTextStyles.titleLargeBlack900_1,
                            ),
                            TextSpan(
                              text:
                                  "Aim to make a down payment that's at least 20% of the car's purchase price. This helps reduce the loan amount and can lower your monthly payments. \n",
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: "4-Year Loan Term (or Less):",
                              style: CustomTextStyles.titleLargeBlack900_1,
                            ),
                            TextSpan(
                              text:
                                  "Try to keep your car loan term to a maximum of four years. Shorter loan terms mean you'll pay less in interest over time and avoid being tied to a car loan for too long.\n",
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: "10% (or Less) of Monthly Income:",
                              style: CustomTextStyles.titleLargeBlack900_1,
                            ),
                            TextSpan(
                              text:
                                  "Make sure that your total car-related expenses, including the monthly loan payment, insurance, gas, maintenance, and other costs, don't exceed 10% of your monthly income. This helps ensure you can comfortably afford your car without straining your finances.",
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(380),
                    margin: getMargin(
                      top: 16,
                    ),
                    child: Text(
                      "Following the 20-4-10 rule can be a smart way to make a responsible car purchase and prevent overspending on a vehicle that might stretch your budget too thin. Remember that personal financial situations can vary, so you might need to adjust these percentages based on your individual circumstances. It's always a good idea to consider your overall financial goals and budget before committing to a major purchase like a car.",
                      maxLines: 12,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeBlack900_2,
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
