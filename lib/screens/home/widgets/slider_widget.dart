import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List sliderImage = [
      //"https://res.cloudinary.com/farmersfreshzone/image/upload/v1689829708/banner/cwsi2grxcaz1xchgtn2g.jpg",
      "https://t3.ftcdn.net/jpg/02/72/61/04/240_F_272610481_sG8NpOrkR9RcqwtkgOk1LxZDcT3GCzru.jpg",
      //"https://t4.ftcdn.net/jpg/02/61/88/57/240_F_261885799_wChAE2Eseb3sGtTNcz1nvi0V51p6mcMZ.jpg",
      "https://imgs.search.brave.com/H9NMuJMFXWdbqtqaor9HbKO9clsuXATCjRbDYNT8RuY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9h/c3NvcnRtZW50LXZl/Z2V0YWJsZXMtZ3Jl/ZW4taGVyYnMtbWFy/a2V0LXZlZ2V0YWJs/ZXMtYmFza2V0XzI4/MjktMTQwMjAuanBn/P3NpemU9NjI2JmV4/dD1qcGc",
      "https://imgs.search.brave.com/oVQ8bG2nvCpsh_t8Ss5SUh5WsYX1MiQhqzqv5QlRRL0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNjQx/ODA5NzkwL3Bob3Rv/L2ZyZXNoLWNvbG9y/ZnVsLXZlZ2V0YWJs/ZXMtYW5kLWZydWl0/cy5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9X3VoTWJuWjZo/MTBkYnUtLTdsZmF6/QWx5ZU1WY1czQ3o3/RkNhTHNUWENzTT0"
    ];
    return CarouselSlider(
      items:  List.generate(sliderImage.length, (index) => SliderItemCard(imageUrl: sliderImage[index])), 
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 1200),
          //aspectRatio: 16 / 9,
          aspectRatio: 64/10,
          height: 200,
          viewportFraction: 1
      ),
    );
  }
}

class SliderItemCard extends StatelessWidget {
  final String imageUrl;
  const SliderItemCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}


