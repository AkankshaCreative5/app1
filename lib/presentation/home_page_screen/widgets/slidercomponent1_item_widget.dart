import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Slidercomponent1ItemWidget extends StatelessWidget {
  const Slidercomponent1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.img7b1,
      height: 88.v,
      width: 143.h,
      radius: BorderRadius.circular(
        20.h,
      ),
      margin: EdgeInsets.fromLTRB(22.h, 2.v, 211.h, 106.v),
    );
  }
}
