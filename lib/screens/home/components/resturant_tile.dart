import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';

class ResturantTile extends StatelessWidget {
  const ResturantTile(
      {super.key,
      required this.src,
      required this.resturanName,
      this.description,
      this.rate = 0});
  final String src, resturanName;
  final String? description;
  final int rate;

  @override
  Widget build(BuildContext context) {
    int remainder = rate % 10;
    int startCount = (rate / 10).floor();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 62,
            height: 72,
            child: NetworkImageWithLoader(
              src,
            ),
          ),
          const SizedBox(width: AppDefault.margin / 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                resturanName,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              if (description != null)
                Text(
                  description!,
                  style: Theme.of(context).textTheme.caption?.copyWith(),
                ),
              const SizedBox(height: 8),
              Row(children: [
                ...List.generate(
                  startCount,
                  (index) => const Icon(
                    // Icons.star_half_rounded,
                    Icons.star_rounded,
                    color: Colors.orangeAccent,
                    size: 16,
                  ),
                ),
                if (remainder != 0)
                  const Icon(
                    Icons.star_half_rounded,
                    // Icons.star_rounded,
                    color: Colors.orangeAccent,
                    size: 16,
                  ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
