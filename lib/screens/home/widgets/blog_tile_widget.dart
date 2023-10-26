import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:farmers_fresh_zone_ui/utils/constants.dart';
import 'package:farmers_fresh_zone_ui/data/dummy_data.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/main_title_widget.dart';
import 'package:flutter/material.dart';

class BlogTileWidget extends StatelessWidget {
  const BlogTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitleWidget(title: "Our Blog Posts"),
        Container(
          padding: const EdgeInsets.all(10),
          height: 250,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: blogs.length,
              itemBuilder: (context, index) => BlogCard(
                  title: blogs[index]['title'],
                  imageUrl: blogs[index]['image'])),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              "VIEW MORE",
              style: TextStyle(color: kyellowcolor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        divider
      ],
    );
  }
}

class BlogCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const BlogCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: kGreyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              style:const TextStyle(color: kGreyColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  "a year ago",
                  style: TextStyle(fontSize: 10, color: kGreyColor),
                ),
                Spacer(),
                Icon(Icons.arrow_forward,
                    color: kGreenColor,
                    opticalSize: 20,
                    size: 12,
                    weight: 100,
                    grade: -25,
                    fill: 0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
