import 'package:farmers_fresh_zone_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        divider,
        Card(
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 0, vertical: 2),
          child: Container(
            width: double.maxFinite,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://i.pinimg.com/564x/6c/55/bb/6c55bb682541f51946025683440b8d10.jpg"),
              ),
            ),
          ),
        ),
        divider
      ],
    );
  }
}
