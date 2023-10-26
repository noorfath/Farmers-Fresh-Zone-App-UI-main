import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:farmers_fresh_zone_ui/utils/constants.dart';
import 'package:farmers_fresh_zone_ui/data/dummy_data.dart';
import 'package:flutter/material.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 900),
              aspectRatio: 16 / 9,
              viewportFraction: 1),
          items: List.generate(
            review.length,
            (index) => ReviewCard(
              name: review[index]['name'],
              profession: review[index]['profession'],
              review: review[index]['review'],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(),
        const SizedBox(
          height: 15,
        ),
        const TagTitleWidget(),
        const SizedBox(
          height: 15,
        ),
        const MediaCard(),
        divider,
      ],
    );
  }
}

class TagTitleWidget extends StatelessWidget {
  const TagTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '''This Kochi-based-farm-to-fork online
Marketplace is connecting farmers directly
  to customers''',
        style: TextStyle(height: 1.5, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MediaCard extends StatelessWidget {
  const MediaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          mediaLogo.length,
          (index) => Image.network(
            mediaLogo[index],
            fit: BoxFit.contain,
            width: 70,
            height: 40,
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String profession;
  final String review;
  const ReviewCard(
      {super.key,
      required this.name,
      required this.profession,
      required this.review});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      height: size * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: kGreyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpWIUTEbl3Km2gu10Jsib39To4S4IYsn8QhA&usqp=CAU"),
            ),
            title: Text(name),
            subtitle: Text(profession),
            trailing: const Icon(Icons.format_quote),
          ),
          SizedBox(
            width: double.infinity,
            height: size * 0.16,
            child: Text(
              review,
              softWrap: true,
              style: const TextStyle(height: 1.5, fontWeight: FontWeight.bold,color: kGreyColor,fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
