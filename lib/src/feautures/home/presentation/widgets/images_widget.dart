import 'dart:developer';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class ImagesWidget extends StatefulWidget {
  const ImagesWidget({super.key});

  @override
  State<ImagesWidget> createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  int currentIndex = 0;

  List<String> pics = [
    'https://images.wallpapersden.com/image/download/4k-talking-to-the-moon_a2pubmuUmZqaraWkpJRobWllrWdma2U.jpg',
    'https://images.hdqwalls.com/wallpapers/the-valley-minimal-4k-9y.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        // maxHeight: 172,
        // minHeight: 172,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: Stack(
        children: [
          Container(
            height: 9 * MediaQuery.of(context).size.width / 16,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xffD9D9D9),
            child: ExtendedImageGesturePageView.builder(
              itemBuilder: (BuildContext context, int index) {
                final item = pics[index];
                final Widget image = ExtendedImage.network(
                  item,
                  fit: BoxFit.contain,
                  mode: ExtendedImageMode.gesture,
                  initGestureConfigHandler: (ExtendedImageState state) {
                    return GestureConfig(
                      inPageView: true,
                    );
                  },
                );
                // image = Container(
                //   child: image,
                //   padding: EdgeInsets.all(5.0),
                // );
                if (index == currentIndex) {
                  return Hero(
                    tag: item + index.toString(),
                    child: image,
                  );
                } else {
                  return image;
                }
              },
              itemCount: pics.length,
              onPageChanged: (int index) {
                log('message');
                currentIndex = index;
                setState(() {});
                // rebuild.add(index);
              },
              controller: ExtendedPageController(
                initialPage: currentIndex,
              ),
            ),
          ),
          Positioned(
            right: 12,
            bottom: 12,
            child: Container(
              height: 22,
              width: 30,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.16),
                borderRadius: BorderRadius.circular(4),
              ),
              alignment: Alignment.center,
              child: Text(
                '${currentIndex + 1}/${pics.length}',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.kWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
