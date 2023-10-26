import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class ServiceFeaturesWidget extends StatelessWidget {
  const ServiceFeaturesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding:const EdgeInsets.all(8),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 0.2, color: kyellowcolor),
          borderRadius: BorderRadius.circular(5)),
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FeaturesItems(name: "30 MINS POLICY", icon: Icons.timer),
          FeaturesItems(name: "TRACEABILITY", icon: Icons.map),
          FeaturesItems(name: "LOCAL SOURCING", icon: Icons.agriculture),
        ],
      ),
    );
  }
}

class FeaturesItems extends StatelessWidget {
  final String name;
  final IconData icon;
  const FeaturesItems({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 28,
          color: kyellowcolor,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: kGreyColor.shade700
              ),
        ),
      ],
    );
  }
}
