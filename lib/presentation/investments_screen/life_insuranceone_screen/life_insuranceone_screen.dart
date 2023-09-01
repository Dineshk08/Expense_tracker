import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class LifeInsuranceoneScreen extends StatelessWidget {
  const LifeInsuranceoneScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgGroup961),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        padding: getPadding(top: 14),
                        child: Padding(
                            padding: getPadding(left: 6, right: 9, bottom: 265),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    onTap: (){onTapArrowleftone(context);},
                                      imagePath: ImageConstant.imgLessthan,
                                      height: getSize(40),
                                      width: getSize(40),
                                      margin: getMargin(left: 6)),
                                  Padding(
                                      padding: getPadding(top: 21),
                                      child: Text("Life Insurance",
                                          style: theme.textTheme.titleSmall)),
                                  Container(
                                      width: getHorizontalSize(369),
                                      margin: getMargin(top: 19, right: 6),
                                      child: Text(
                                          " Life insurance is a financial agreement that provides financial protection for your loved ones in case you pass away. Here's a simple explanation",
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900Bold)),
                                  Padding(
                                      padding: getPadding(top: 26),
                                      child: Text("What is Life Insurance?",
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(top: 11, right: 6),
                                      padding: getPadding(
                                          left: 7, top: 6, right: 7, bottom: 6),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(350),
                                          margin: getMargin(top: 11),
                                          child: Text(
                                              "Life insurance is a contract between you (the policyholder) and an insurance company. In exchange for paying regular payments called premiums, the insurance company promises to provide a sum of money (called a death benefit) to your chosen beneficiaries when you die.",
                                              maxLines: 8,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 27, top: 34),
                                      child: Text("Why Get Life Insurance?",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(top: 7, right: 6),
                                      padding: getPadding(
                                          left: 3,
                                          top: 12,
                                          right: 3,
                                          bottom: 12),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(359),
                                          margin: getMargin(top: 4),
                                          child: Text(
                                              "Life insurance helps ensure that your loved ones are financially supported after you're gone. It can cover things like funeral expenses, outstanding debts, and ongoing living expenses for your family.",
                                              maxLines: 6,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 23, top: 32),
                                      child: Text("Types of Life Insurance:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(
                                          left: 5, top: 12, right: 11),
                                      padding: getPadding(
                                          left: 2,
                                          top: 16,
                                          right: 2,
                                          bottom: 16),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width: getHorizontalSize(352),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Term Life Insurance: ",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "This type provides coverage for a specific period, like 10, 20, or 30 years. If you pass away during the term, your beneficiaries receive the death benefit. If you outlive the term, the policy usually expires without a payout.",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center)),
                                            Container(
                                                width: getHorizontalSize(344),
                                                margin: getMargin(
                                                    left: 6,
                                                    top: 26,
                                                    right: 4,
                                                    bottom: 13),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Whole Life Insurance:",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "This type offers lifelong coverage. It includes a savings component (cash value) that grows over time. Premiums are generally higher than term insurance, but part of the premium goes into the cash value, which you can often borrow against.\n",
                                                          style: theme.textTheme
                                                              .titleLarge),
                                                      TextSpan(
                                                          text:
                                                              " \nUniversal Life Insurance:",
                                                          style: CustomTextStyles
                                                              .titleLargeBlack900_1),
                                                      TextSpan(
                                                          text:
                                                              "Similar to whole life, this policy combines a death benefit with a savings component. It's more flexible, allowing you to adjust premium amounts and death benefits.",
                                                          style: theme.textTheme
                                                              .titleLarge)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 30, top: 32),
                                      child: Text("How Does It Work?",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: getHorizontalSize(349),
                                          margin: getMargin(
                                              left: 8, top: 14, right: 18),
                                          padding: getPadding(
                                              left: 3,
                                              top: 19,
                                              right: 3,
                                              bottom: 19),
                                          decoration: AppDecoration.fillGray7001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderLR40),
                                          child: Container(
                                              width: getHorizontalSize(332),
                                              margin: getMargin(
                                                  left: 11, bottom: 6),
                                              child: Text(
                                                  "You choose a policy type and coverage amount based on your needs and budget.  You pay regular premiums to the insurance company.  If you pass away while the policy is in force, your beneficiaries receive the death benefit.  Beneficiaries can use the payout to cover various expenses and financial needs",
                                                  maxLines: 9,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.titleLarge)))),
                                  Padding(
                                      padding: getPadding(left: 12, top: 23),
                                      child: Text("Benefits:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Container(
                                      margin: getMargin(top: 13, right: 4),
                                      padding: getPadding(
                                          left: 15,
                                          top: 1,
                                          right: 15,
                                          bottom: 1),
                                      decoration: AppDecoration.fillGray7001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR40),
                                      child: Container(
                                          width: getHorizontalSize(334),
                                          margin: getMargin(top: 13),
                                          child: Text(
                                              "Provides financial security to your family when you're no longer there to support them. Helps cover immediate expenses like funeral costs and outstanding debts.  Can help replace lost income and maintain your family's standard of living.",
                                              maxLines: 8,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleLarge))),
                                  Padding(
                                      padding: getPadding(left: 17, top: 28),
                                      child: Text("Considerations:",
                                          style: CustomTextStyles
                                              .titleLargeBlack900_2)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          margin: getMargin(
                                              left: 7, top: 18, right: 13),
                                          padding: getPadding(
                                              left: 18,
                                              top: 21,
                                              right: 18,
                                              bottom: 21),
                                          decoration: AppDecoration.fillGray7001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderLR40),
                                          child: SizedBox(
                                              width: getHorizontalSize(318),
                                              child: Text(
                                                  "Premiums vary based on factors like age, health, coverage amount, and policy type. - It's important to choose an appropriate coverage amount to adequately protect your family's needs.  Review and update your policy as your life circumstances change (e.g., marriage, children, career changes).",
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.titleLarge)))),
                                  Container(
                                      width: getHorizontalSize(371),
                                      margin: getMargin(left: 4, top: 57),
                                      child: Text(
                                          "Remember that life insurance is a tool for financial protection, not an investment. It's meant to provide peace of mind for your loved ones during challenging times. When considering life insurance, it's a good idea to assess your financial situation and consult with a qualified insurance professional to determine what type and amount of coverage suit your needs.",
                                          maxLines: 10,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargeBlack900Bold))
                                ])))))));
  }
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
