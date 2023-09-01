import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class HealthInsuranceoneScreen extends StatelessWidget {
  const HealthInsuranceoneScreen({Key? key})
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
                top: 21,
              ),
              child: Padding(
                padding: getPadding(
                  left: 5,
                  right: 9,
                  bottom: 96,
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
                      height: getVerticalSize(62),
                      width: getHorizontalSize(40),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 72,
                        ),
                        child: Text(
                          "Health insurance",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(371),
                      margin: getMargin(
                        left: 4,
                        top: 9,
                      ),
                      child: Text(
                        "Health insurance is a way to protect yourself and your family from the financial costs of medical expenses. It's like a safety net that helps you pay for medical treatments and services. Here's a simple explanation:",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 15,
                      ),
                      child: Text(
                        "What is Health Insurance?",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(253),
                        width: getHorizontalSize(356),
                        margin: getMargin(
                          top: 16,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: getVerticalSize(240),
                                width: getHorizontalSize(356),
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
                                width: getHorizontalSize(329),
                                child: Text(
                                  "Health insurance is a type of coverage that helps you pay for medical and healthcare expenses. When you have health insurance, you pay a regular amount called a premium to an insurance company. In return, the insurance company helps cover the costs of your medical care when you need it.",
                                  maxLines: 9,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Text(
                          "How Does Health Insurance Work?",
                          style: CustomTextStyles.titleLargeBlack900_2,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 4,
                        top: 15,
                        right: 8,
                      ),
                      padding: getPadding(
                        left: 9,
                        top: 3,
                        right: 9,
                        bottom: 3,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(345),
                        margin: getMargin(
                          top: 9,
                        ),
                        child: Text(
                          "You choose a health insurance plan that suits your needs. Plans can vary in terms of coverage and cost. - When you need medical care, like doctor visits, hospital stays, or prescriptions, your health insurance plan helps pay for a portion of those costs. - Depending on your plan, you might have to pay a certain amount called a deductible before the insurance starts covering costs. After that, you usually pay a smaller portion, known as a co-payment or co-insurance, while the insurance covers the rest.",
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 9,
                        top: 15,
                      ),
                      child: Text(
                        "Key Points:",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(358),
                      margin: getMargin(
                        left: 8,
                        top: 32,
                        right: 8,
                      ),
                      padding: getPadding(
                        left: 3,
                        top: 1,
                        right: 3,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(341),
                        margin: getMargin(
                          top: 7,
                          right: 10,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Coverage:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Health insurance can cover a range of medical expenses, from routine check-ups to major surgeries.\n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Network:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Insurance companies often have a network of healthcare providers (doctors, hospitals) that they work with. Getting care from within the network can be more cost-effective. \n",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Premium:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "The premium is the amount you pay regularly (monthly or annually) to keep your health insurance active. \nClaim:When you get medical care, you or your healthcare provider will submit a claim to the insurance company for reimbursement of covered expenses.",
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
                        left: 14,
                        top: 77,
                      ),
                      child: Text(
                        "Benefits:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(350),
                      margin: getMargin(
                        left: 5,
                        top: 16,
                        right: 20,
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
                        width: getHorizontalSize(335),
                        margin: getMargin(
                          left: 6,
                          bottom: 17,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Financial Protection:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    " Health insurance helps protect you from high medical costs that could otherwise put a strain on your finances.\n ",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "Access to Care:",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Having insurance can make it easier to get the medical attention you need.",
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: " Preventive Care: ",
                                style: CustomTextStyles.titleLargeBlack900_1,
                              ),
                              TextSpan(
                                text:
                                    "Many plans cover preventive services like vaccinations and screenings to help you stay healthy.",
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
                        left: 5,
                        top: 77,
                      ),
                      child: Text(
                        "Considerations:",
                        style: CustomTextStyles.titleLargeBlack900_2,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 5,
                        top: 17,
                      ),
                      padding: getPadding(
                        left: 12,
                        top: 7,
                        right: 12,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.fillGray7001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR40,
                      ),
                      child: Container(
                        width: getHorizontalSize(343),
                        margin: getMargin(
                          top: 5,
                        ),
                        child: Text(
                          "Different health insurance plans offer different levels of coverage, so it's important to choose one that suits your needs and budget. - Read and understand the terms, coverage limits, and exclusions of your insurance plan. - Some plans have restrictions on pre-existing conditions, so be sure to check those details.",
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
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
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
