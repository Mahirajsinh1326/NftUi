import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nftui/gradientbutton.dart';
import 'package:nftui/nftimages.dart';
import 'package:nftui/slidevcontainer.dart';
import 'package:nftui/slideview.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items = ['All', 'Item 1', 'Item 2', 'Item 3', 'Item 4'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Discover',
                        style: TextStyle(fontSize: 27),
                      ),
                      Text(
                        'YourNft',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(Iconsax.textalign_center),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),


              Container(
                height: 70,
                // Set the height of the container to fit the buttons
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  // Set the scroll direction to horizontal
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GradientButton(label: items[index]),
                    );
                  },
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Nfts',
                    style: TextStyle(fontSize: 25),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Iconsax.arrow_right_1,
                        size: 30,
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),

              SlideView()
            ],
          ),
        ),
      ),
    );
  }
}
