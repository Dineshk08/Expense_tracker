import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

class StockMarketScreen extends StatelessWidget {
  const StockMarketScreen({Key? key})
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
                ImageConstant.imgGroup956,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              padding: getPadding(
                top: 16,
              ),
              child: Padding(
                padding: getPadding(
                  left: 5,
                  right: 16,
                  bottom: 70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      onTap: (){
                        onTapArrowleftone(context);
                      },
                      imagePath: ImageConstant.imgLessthan,
                      height: getSize(40),
                      width: getSize(40),
                      margin: getMargin(
                        left: 6,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "STOCKS",
                          style:
                              CustomTextStyles.titleLargeJostBlack900ExtraBold,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(368),
                      margin: getMargin(
                        top: 33,
                      ),
                      child: Text(
                        "*ITC because it gives regular dividence\n*Adani enterprise as it is ginaing growth after fall in its history also it falls and grow exponential\n*Sbi india as this stock in accumlation phase instutional traders buying phase  so it will definetely go high but take time best for long term\n*Infosys because nifty is trading in all time high without the support of tech company like Infosys  it is expected that nifty will go further up because of the foreign investment shift from china to india so best to buy infosys \n*Tata motors one of the best company for car they are trading around 600 near their all time high but due to their movement towards evs    they can beat their own so best to buy",
                        maxLines: 21,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeJostBlack900ExtraBold,
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
