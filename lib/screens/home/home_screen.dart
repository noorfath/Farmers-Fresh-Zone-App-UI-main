import 'package:farmers_fresh_zone_ui/screens/home/widgets/bottom_nav_widget.dart';
import 'package:farmers_fresh_zone_ui/utils/colors.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/app_bar_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/banner_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/blog_tile_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/category_grid_wiget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/chips_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/customer_review_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/footer_banner_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/footer_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/main_title_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/product_grid_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/service_features_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: HomeScreen(),));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List _widgets = const [
    ChipContainerWidget(),
    SliderWidget(),
    ServiceFeaturesWidget(),
    MainTitleWidget(title: "Shop By Category"),
    CategoryGridWidget(),
    BannerWidget(),
    MainTitleWidget(title: "Best Selling Products"),
    ProductGridWidget(),
    BannerWidget(),
    BlogTileWidget(),
    CustomerReviewWidget(),
    FooterWidget(),
    FoooterBannerWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppBarWidget(),
            SliverList.builder(
                itemCount: _widgets.length,
                itemBuilder: (context, index) => _widgets[index]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
