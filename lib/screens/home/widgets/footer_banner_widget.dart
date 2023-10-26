import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class FoooterBannerWidget extends StatelessWidget {
  const FoooterBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      width: double.infinity,
      height: 60,
      color: kyellowcolor,
      child: const Center(
        child: Text(
          "Copyright @ 2021 Farmers Fresh Zone.\nAll Rights Reserved.",
          style: TextStyle(color: kWhiteColor, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
