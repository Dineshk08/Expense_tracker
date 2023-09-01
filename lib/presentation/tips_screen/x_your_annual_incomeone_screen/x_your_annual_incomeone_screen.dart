import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image_1.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class XYourAnnualIncomeoneScreen extends StatelessWidget {
  const XYourAnnualIncomeoneScreen({Key? key})
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
              padding: getPadding(
                top: 15,
              ),
              child: Padding(
                padding: getPadding(
                  left: 4,
                  right: 5,
                  bottom: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    CustomImageView(
                      onTap: (){onTapArrowleftone(context);},
                      imagePath: ImageConstant.imgLessthan,
                      height: getVerticalSize(47),
                      width: getHorizontalSize(40),
                      margin: getMargin(
                        left: 12,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                      ),
                      child: Text(
                        "2X your annual income :",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(374),
                      margin: getMargin(
                        top: 12,
                        right: 5,
                      ),
                      child: Text(
                        "The \"2x your annual income\" rule is a general guideline often used for determining how much you might consider saving or investing for retirement. It suggests that you aim to save or have investments equal to at least two times your annual income by the time you retire. Here's a simple explanation:",
                        maxLines: 9,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(867),
                      width: getHorizontalSize(377),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: appTheme.gray700.withOpacity(0.7),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusStyle.customBorderLR40,
                              ),
                              child: Container(
                                height: getVerticalSize(864),
                                width: getHorizontalSize(377),
                                padding: getPadding(
                                  left: 6,
                                  top: 11,
                                  right: 6,
                                  bottom: 11,
                                ),
                                decoration: AppDecoration.fillGray7001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderLR40,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: getHorizontalSize(350),
                                        margin: getMargin(
                                          left: 1,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Calculate Your Goal: ",
                                                style: CustomTextStyles
                                                    .titleLargeBlack900_1,
                                              ),
                                              TextSpan(
                                                text:
                                                    "Start by figuring out your current annual income. Then, multiply that number by 2. This gives you a target savings or investment amount that you should aim for by the time you retire.\n",
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                              TextSpan(
                                                text: "Retirement Savings: ",
                                                style: CustomTextStyles
                                                    .titleLargeBlack900_1,
                                              ),
                                              TextSpan(
                                                text:
                                                    "The idea behind this rule is that having a retirement fund of around 2 times your annual income can provide you with a reasonable level of financial security during your retirement years. It's meant to help ensure you have enough funds to maintain your desired lifestyle and cover your expenses without relying solely on Social Security or other sources of income.",
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        width: getHorizontalSize(356),
                                        margin: getMargin(
                                          bottom: 189,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    "Adjust for Individual Needs:",
                                                style: CustomTextStyles
                                                    .titleLargeBlack900_1,
                                              ),
                                              TextSpan(
                                                text:
                                                    "Keep in mind that the \"2x your annual income\" rule is a rough guideline and might not fit everyone's situation. Your retirement needs can vary based on factors like your desired lifestyle, other sources of income, healthcare costs, and more.",
                                                style:
                                                    theme.textTheme.titleLarge,
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
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: getHorizontalSize(363),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Regular Contributions:",
                                      style:
                                          CustomTextStyles.titleLargeBlack900_1,
                                    ),
                                    TextSpan(
                                      text:
                                          "To achieve this goal, it's often recommended to consistently save or invest a portion of your income throughout your working years. Contributions to retirement accounts like 401(k)s, IRAs, or similar plans can help you reach this target over time.",
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
                      width: getHorizontalSize(380),
                      margin: getMargin(
                        top: 1,
                      ),
                      child: Text(
                        "Remember that while this rule can provide a general direction, personal financial situations are unique. It's a good starting point, but you should also consider consulting with a financial advisor to create a retirement plan that aligns with your specific goals, needs, and circumstances.",
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
