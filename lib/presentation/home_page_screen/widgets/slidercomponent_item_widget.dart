import '../widgets/slidercomponent1_item_widget.dart';
import 'package:akanksha_s_application1/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlidercomponentItemWidget extends StatelessWidget {
  SlidercomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 196.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 5,
        itemBuilder: (context, index, realIndex) {
          return Slidercomponent1ItemWidget();
        },
      ),
    );
  }
}
