import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';

class ImageSliderFood extends StatefulWidget {
  const ImageSliderFood({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  State<ImageSliderFood> createState() => _ImageSliderFoodState();
}

class _ImageSliderFoodState extends State<ImageSliderFood> {
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.9);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: PageView(
        controller: pageController,
        padEnds: false,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDefault.padding),
            child: NetworkImageWithLoader(
              widget.imageUrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDefault.padding),
            child: NetworkImageWithLoader(
              widget.imageUrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDefault.padding),
            child: NetworkImageWithLoader(
              widget.imageUrl,
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(AppDefault.padding),
          //   child: NetworkImageWithLoader(
          //     'https://i.imgur.com/WTjq9wQ.png',
          //   ),
          // )
        ],
      ),
    );
  }
}
