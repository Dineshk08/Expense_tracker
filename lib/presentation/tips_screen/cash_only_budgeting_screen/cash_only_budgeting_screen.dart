import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image_1.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CashOnlyBudgetingScreen extends StatelessWidget {
  const CashOnlyBudgetingScreen({Key? key})
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
          height: getVerticalSize(72),
          leadingWidth: double.maxFinite,
          leading: AppbarImage(
            onTap:() {
                      onTapArrowleftone(context);
                    },
            imagePath: ImageConstant.imgLessthan,
            margin: getMargin(
              left: 9,
              right: 341,
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
              top: 8,
            ),
            child: Padding(
              padding: getPadding(
                left: 2,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Cash-only budgeting",
                    style: theme.textTheme.titleSmall,
                  ),
                  Container(
                    width: getHorizontalSize(388),
                    margin: getMargin(
                      top: 27,
                    ),
                    child: Text(
                      "Cash-only budgeting is a straightforward method of managing your money where you primarily use physical cash for your expenses instead of relying on credit cards or digital payments. Here's a simple explanation:",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeBlack900_2,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(567),
                    width: getHorizontalSize(378),
                    margin: getMargin(
                      top: 12,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(565),
                            width: getHorizontalSize(378),
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
                            width: getHorizontalSize(374),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Using Physical Cash:",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "With cash-only budgeting, you withdraw a specific amount of money in cash at the beginning of each budgeting period (like a week or a month).\n",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  TextSpan(
                                    text: "Envelope System:",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "You then divide this cash into envelopes labeled with different spending categories, like groceries, entertainment, transportation, etc.\n",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  TextSpan(
                                    text: "Spending Limit:",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "Each envelope represents the maximum amount you're allowed to spend in that category for the chosen period. Once the cash in the envelope is used up, you stop spending in that category until the next budgeting period.\n",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  TextSpan(
                                    text: "No Credit or Digital Payments:",
                                    style:
                                        CustomTextStyles.titleLargeBlack900_1,
                                  ),
                                  TextSpan(
                                    text:
                                        "The key is that you only spend the cash you have in the envelopes. You don't use credit cards or digital payments, which can make it easier to stick to your budget and avoid overspending.",
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
                    width: getHorizontalSize(372),
                    margin: getMargin(
                      left: 4,
                      top: 21,
                      right: 12,
                    ),
                    child: Text(
                      "This method can be effective because it makes your spending tangible and gives you a clear visual of how much money you have left for each category. It can help you become more mindful about your spending and encourages you to make conscious choices about where your money goes. However, it might require more effort and planning, as well as some adjustments if you encounter unexpected expenses.",
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
