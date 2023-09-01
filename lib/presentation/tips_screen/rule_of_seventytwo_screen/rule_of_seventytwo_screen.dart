import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class RuleOfSeventytwoScreen extends StatelessWidget {
  const RuleOfSeventytwoScreen({Key? key})
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
                top: 13,
              ),
              child: Padding(
                padding: getPadding(
                  left: 11,
                  right: 11,
                  bottom: 305,
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
                    Padding(
                      padding: getPadding(
                        top: 31,
                      ),
                      child: Text(
                        "Rule of 72",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(354),
                      margin: getMargin(
                        left: 8,
                        top: 36,
                        right: 6,
                      ),
                      child: Text(
                        "The \"Rule of 72\" is a simple way to estimate how long it will take for an investment to double in value, based on a fixed annual growth rate. Here's a straightforward explanation:",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(368),
                      margin: getMargin(
                        top: 5,
                      ),
                      padding: getPadding(
                        left: 9,
                        top: 5,
                        right: 9,
                        bottom: 5,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(342),
                        margin: getMargin(
                          right: 5,
                          bottom: 2,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Doubling Your Money:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "The rule helps you figure out approximately how many years it will take for an investment to become twice its original value.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Divide by Growth Rate:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "To use the Rule of 72, you divide the number 72 by the annual growth rate (expressed as a percentage). The result is an estimate of how many years it will take for your investment to double. \nFor example, if you have an investment growing at a rate of 6% per year, you can use the Rule of 72 to estimate that it would take around 72 / 6 = 12 years for that investment to double in value.",
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
