import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:farmers_fresh_zone_ui/data/dummy_data.dart';
import 'package:flutter/material.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;
    return Column(
      children: [
        GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // mainAxisSpacing: 5,
              // crossAxisSpacing: 5,
              // childAspectRatio: 0.8 / 1.1
              childAspectRatio: widthSize < 410
                  ? widthSize / heightSize / 0.7
                  : widthSize / heightSize / 0.65),
          itemBuilder: (context, index) => ProductCard(index: index),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {},
            minWidth: double.infinity,
            height: 30,
            color: kyellowcolor,
            textColor: kWhiteColor,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: kyellowcolor),
            ),
            child: const Text(
              "VIEW MORE",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: kGreyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(
                  "${products[index]['imageUrl']}",
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            products[index]['productTitle'],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          products[index]['discount'] == true
              ? Row(
                  children: [
                    Text("₹${products[index]['price']}",
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 3),
                    Text(
                      "₹${products[index]['discountPrice']}",
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: kGreyColor),
                    )
                  ],
                )
              : Text("₹${products[index]['price']}",
                  style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1.00 ${products[index]['unit']}",
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const Spacer(),
              MaterialButton(
                onPressed: () {},
                minWidth: 90,
                height: 35,
                color: kyellowcolor,
                textColor: kWhiteColor,
                child: const Text("ADD"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
