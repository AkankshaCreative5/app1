import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:akanksha_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavigationgridItemWidget extends StatelessWidget {
  const NavigationgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      height: 36.v,
      width: 35.h,
      padding: EdgeInsets.all(6.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgCarBlack900,
      ),
    );
  }
}
