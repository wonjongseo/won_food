import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/data/lists.dart';
import 'package:won_food_app/screens/home/components/resturant_tile.dart';

class NearbyResturants extends StatelessWidget {
  const NearbyResturants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDefault.padding),
          child: Row(
            children: [
              Text(
                'Big discount resto',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '(nearby)',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(resturantTiles.length, (index) {
              print(resturantTiles[index]);

              return ResturantTile(
                src: resturantTiles[index]['imageUrl'],
                resturanName: resturantTiles[index]['resturan_name'],
                description: resturantTiles[index]['description'],
                rate: resturantTiles[index]['rate'],
              );
            }),
          ),
        )
      ],
    );
  }
}
