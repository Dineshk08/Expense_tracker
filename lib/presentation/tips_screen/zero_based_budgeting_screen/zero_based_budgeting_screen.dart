import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ZeroBasedBudgetingScreen extends StatelessWidget {
  const ZeroBasedBudgetingScreen({Key? key})
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
          height: getVerticalSize(80),
          leadingWidth: double.maxFinite,
          leading: AppbarImage(
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
              top: 17,
            ),
            child: Padding(
              padding: getPadding(
                left: 5,
                right: 8,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Zero-based budgeting",
                    style: theme.textTheme.titleSmall,
                  ),
                  Container(
                    width: getHorizontalSize(373),
                    margin: getMargin(
                      top: 13,
                    ),
                    child: Text(
                      "Zero-based budgeting is a method of managing your money where you allocate every dollar of your income to a specific purpose, leaving no money unassigned or unaccounted for. In other words, you \"give every dollar a job.\" Here's how it works in simple words:",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeBlack900Bold,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 2,
                    ),
                    padding: getPadding(
                      left: 9,
                      top: 4,
                      right: 9,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.fillGray7001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR40,
                    ),
                    child: Container(
                      width: getHorizontalSize(358),
                      margin: getMargin(
                        bottom: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Income:",
                              style: CustomTextStyles.titleLargeBlack900_1,
                            ),
                            TextSpan(
                              text:
                                  "You start by listing down all the money you earn, like your salary, side gig earnings, or any other sources of income.\nExpenses:Then, you create categories for all your expenses, such as rent, groceries, transportation, entertainment, savings, and so on. \n",
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: "Allocating: ",
                              style: CustomTextStyles.titleLargeBlack900_1,
                            ),
                            TextSpan(
                              text:
                                  "Now, you assign a portion of your income to each expense category. You ensure that the total of your allocations matches your total income.\n",
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: "Zero Balance: ",
                              style: CustomTextStyles.titleLargeBlack900_1,
                            ),
                            TextSpan(
                              text:
                                  "The goal is to make sure that at the end of your budgeting process, your income minus your allocations equals zero. This means you've accounted for every dollar you earned and allocated it toward something specific.",
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(358),
                    margin: getMargin(
                      left: 11,
                      top: 18,
                      right: 7,
                    ),
                    child: Text(
                      "The idea behind zero-based budgeting is to make conscious choices about where your money goes and to prevent any unnecessary or unplanned spending. It encourages you to prioritize your needs, wants, savings, and financial goals while giving you a clear picture of where your money is going. It can be a powerful tool to gain control over your finances and ensure that you're using your money in the most effective way possible.",
                      maxLines: 13,
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
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
