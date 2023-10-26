import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        height: 190,
        width: double.infinity,
        child: FooterTextCard(),
      ),
    );
  }
}

class FooterTextCard extends StatelessWidget {
  const FooterTextCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Get TO Know Us",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "About Us  |  Our Farmers  |  Blog",
          style: TextStyle(color: kGreyColor, fontSize: 12),
        ),
        SizedBox(
          height: 15,
        ),
        Text("Useful Links", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          height: 15,
        ),
        Text("Privacy Policy  |  Return & Refund Policy  |  Terms & Conditions",
            style: TextStyle(color: kGreyColor, fontSize: 12)),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: kGreyColor,
                    size: 28,
                  ),
                  FaIcon(
                    FontAwesomeIcons.youtube,
                    color: kGreyColor,
                    size: 28,
                  ),
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: kGreyColor,
                    size: 28,
                  ),
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: kGreyColor,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
