import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class BannersWidget extends StatefulWidget {
  const BannersWidget({super.key});

  @override
  State<BannersWidget> createState() => _BannersWidgetState();
}

class _BannersWidgetState extends State<BannersWidget> {
  List<String> banners = [
    'https://pbs.twimg.com/media/FJ96vOQWUAwbIah?format=jpg&name=large',
    'https://pbs.twimg.com/media/Eu7e3mQVgAImK2o?format=png&name=large'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: true,
        ),
        items: banners
            .map(
              (e) => Container(
                height: 136,
                margin: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 10,
                ),
                width: context.screenSize.width * 0.9,
                decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      // spreadRadius: 2,
                      blurRadius: 5,
                      // offset: const Offset(0, 3),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(e),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
