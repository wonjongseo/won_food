import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/entrypoint/entrypoint_ui.dart';

class AdminPageHeader extends StatelessWidget with PreferredSizeWidget {
  const AdminPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.back),
        onPressed: () => EntryPointUI(),
      ),
      title: Text(
        'Admin Page',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminPageHeader(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'user',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Text(
                    'Categorty',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Container(
            width: double.infinity,
            child: TextButton(
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Text(
                    'Resturant',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Container(
            child: TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Text(
                    'data',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
