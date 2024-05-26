import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nftui/nftimages.dart';

class SlideVContainer extends StatelessWidget {
  const SlideVContainer({
    super.key, required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 415,
        width: 325,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: Color(0xfff7f7f9)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child:  Image(image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        )
    );
  }
}