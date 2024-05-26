import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:nftui/slidevcontainer.dart';

import 'nftimages.dart';

class SlideView extends StatelessWidget {
  const SlideView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(options: CarouselOptions(
        viewportFraction: 1,
        height: 415
    ),
      items: [
        SlideVContainer(imageUrl: NftImages.NImages2),
        SlideVContainer(imageUrl: NftImages.NImages3),
        SlideVContainer(imageUrl: NftImages.NImages4),
        SlideVContainer(imageUrl: NftImages.NImages5),
        SlideVContainer(imageUrl: NftImages.NImages1),
      ],);
  }
}