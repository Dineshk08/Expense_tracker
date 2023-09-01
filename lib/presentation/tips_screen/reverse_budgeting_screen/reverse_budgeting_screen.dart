import 'package:dinesh_s_application42/core/app_export.dart';

import 'package:flutter/material.dart';

class ReverseBudgetingScreen extends StatelessWidget {
  const ReverseBudgetingScreen({Key? key})
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
                ImageConstant.imgGroup886,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(
                  left: 6,
                  right: 6,
                  bottom: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      onTap: (){onTapArrowleftone(context);},
                      imagePath: ImageConstant.imgLessthan,
                      height: getVerticalSize(13),
                      width: getHorizontalSize(40),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 42,
                      ),
                      child: Text(
                        "Reverse budgeting",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(351),
                        margin: getMargin(
                          left: 7,
                          top: 20,
                          right: 17,
                        ),
                        child: Text(
                          "Reverse budgeting, also known as \"pay yourself first,\" is a financial strategy where you prioritize saving and investing before you allocate money to your expenses. Here's a simple explanation:",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeBlack900Bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 25,
                      ),
                      padding: getPadding(
                        left: 7,
                        top: 4,
                        right: 7,
                        bottom: 4,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(362),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Saving First:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text:
                                    "Instead of creating a budget by listing your expenses and then deciding how much to save with what's left, reverse budgeting flips this around. You start by deciding how much you want to save or invest from your income.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Expenses After: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Once you've set aside your savings or investment amount, you then manage your expenses with what's left. This forces you to live within the remaining budget after saving, rather than trying to save whatever's left after spending.",
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(368),
                      margin: getMargin(
                        left: 7,
                        top: 12,
                        right: 2,
                      ),
                      child: Text(
                        "In simpler terms, reverse budgeting ensures that you save a certain amount of money before you even think about spending. This way, you're prioritizing your financial goals and building savings without the risk of overspending and neglecting saving for the future. It's a helpful approach for those who struggle to consistently save or invest because it puts savings at the forefront of your financial decisions.",
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
