import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/skeleton.dart';

class NetworkImageWithLoader extends StatelessWidget {
  const NetworkImageWithLoader(
    this.src, {
    super.key,
    this.fit = BoxFit.cover,
    this.radius = AppDefault.radius,
    this.borderRadius,
  });
  final BoxFit fit;
  final String src;
  final double radius;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.all(Radius.circular(radius)),
      child: CachedNetworkImage(
        fit: fit,
        imageUrl: src,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: fit)),
        ),
        placeholder: (context, url) => const Skeletion(),
        errorWidget: (context, url, error) => Column(
          children: [
            const Icon(Icons.error),
            const SizedBox(height: AppDefault.margin / 2),
            Text(error)
          ],
        ),
      ),
    );
  }
}
