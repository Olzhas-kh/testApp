import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narxoz/src/core/constants/constants.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/home/data/model/banner_dto.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/banners_cubit.dart';

class BannersWidget extends StatefulWidget {
  const BannersWidget({super.key});

  @override
  State<BannersWidget> createState() => _BannersWidgetState();
}

class _BannersWidgetState extends State<BannersWidget> {
  int _current = 0;
  CarouselController carouselController = CarouselController();

  List<String> localBanners = [
    'https://narxoz.edu.kz/images_1/tild3736-3437-4433-b632-313966366331__whatsapp_image_2022-.jpeg',
    'https://narxoz.edu.kz/images_1/tild3538-6638-4937-b333-333339333436__whatsapp_image_2022-.jpeg',
    'https://narxoz.edu.kz/images_1/tild6365-3139-4362-b336-356137636136____.png',
    'https://narxoz.edu.kz/images_1/tild6234-3464-4163-b962-306230326635__whatsapp_image_2022-.jpeg',
    'https://narxoz.edu.kz/images_1/tild3064-6639-4662-b839-373531616564__whatsapp_image_2022-.jpeg',
    'https://narxoz.edu.kz/images_1/tild3563-6661-4831-a634-623938643064__whatsapp_image_2022-.jpeg',
  ];

  @override
  void initState() {
    BlocProvider.of<BannersCubit>(context).getBanners();
    super.initState();
  }

  // Future<void> _launchInBrowser(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannersCubit, BannersState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadingState: () => const SizedBox(
            height: 156,
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.kRedPrimary,
              ),
            ),
          ),
          emptyState: () {
            return const SizedBox();
            // return Column(
            //   children: [
            //     SizedBox(
            //       width: double.infinity,
            //       height: 156,
            //       child: CarouselSlider(
            //         carouselController: carouselController,
            //         options: CarouselOptions(
            //           viewportFraction: 1,
            //           autoPlay: true,
            //           onPageChanged: (index, reason) {
            //             setState(() {
            //               _current = index;
            //             });
            //           },
            //         ),
            //         items: localBanners
            //             .map(
            //               (e) => Container(
            //                 height: 136,
            //                 margin: const EdgeInsets.symmetric(
            //                   horizontal: 4,
            //                   vertical: 10,
            //                 ),
            //                 width: context.screenSize.width * 0.9,
            //                 decoration: BoxDecoration(
            //                   color: AppColors.kWhite,
            //                   borderRadius: BorderRadius.circular(15),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.grey.withOpacity(0.2),
            //                       // spreadRadius: 2,
            //                       blurRadius: 5,
            //                       // offset: const Offset(0, 3),
            //                     ),
            //                   ],
            //                   // image: DecorationImage(
            //                   //   image: NetworkImage(e),
            //                   //   fit: BoxFit.cover,
            //                   // ),
            //                 ),
            //                 child: ClipRRect(
            //                   borderRadius: BorderRadius.circular(15),
            //                   child: CachedNetworkImage(
            //                     imageUrl: e,
            //                     progressIndicatorBuilder: (context, url, downloadProgress) {
            //                       return const Center(
            //                         child: CircularProgressIndicator(
            //                           color: AppColors.kRedPrimary,
            //                         ),
            //                       );
            //                     },
            //                     errorWidget: (context, url, error) => const Icon(Icons.error),
            //                     fit: BoxFit.cover,
            //                   ),
            //                   // child: Image.network(
            //                   //   e,
            //                   //   fit: BoxFit.cover,
            //                   //   loadingBuilder: (context, child, loadingProgress) {
            //                   //     if (loadingProgress == null) {
            //                   //       return child;
            //                   //     }
            //                   //     return Center(
            //                   //       child: CircularProgressIndicator(
            //                   //         color: AppColors.kRedPrimary,
            //                   //         value: loadingProgress.expectedTotalBytes != null
            //                   //             ? loadingProgress.cumulativeBytesLoaded /
            //                   //                 loadingProgress.expectedTotalBytes!
            //                   //             : null,
            //                   //       ),
            //                   //     );
            //                   //   },
            //                   //   errorBuilder: (
            //                   //     BuildContext context,
            //                   //     Object exception,
            //                   //     StackTrace? stackTrace,
            //                   //   ) {
            //                   //     return const Center(child: Text('Image Error'));
            //                   //   },
            //                   // ),
            //                 ),
            //               ),
            //             )
            //             .toList(),
            //       ),
            //     ),
            //     const SizedBox(height: 10),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: localBanners.asMap().entries.map((entry) {
            //         return GestureDetector(
            //           onTap: () => carouselController.animateToPage(entry.key),
            //           child: Container(
            //             width: 15,
            //             height: 3,
            //             margin: const EdgeInsets.symmetric(horizontal: 2.5),
            //             decoration: BoxDecoration(
            //               // shape: BoxShape.circle,
            //               borderRadius: BorderRadius.circular(3),
            //               color: _current == entry.key ? AppColors.kRedPrimary : const Color(0xffCCCCCC),
            //             ),
            //           ),
            //         );
            //       }).toList(),
            //     ),
            //   ],
            // );
          },
          loadedState: (List<BannerDTO> banners) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 156,
                  child: CarouselSlider(
                    carouselController: carouselController,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
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
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15),
                                onTap: e.link == null
                                    ? null
                                    : () {
                                        // _launchInBrowser(Uri.parse(e.link!));
                                        context.router.push(BannersDetailPageRoute(link: e.link!));
                                      },
                                child: CachedNetworkImage(
                                  imageUrl: e.image ?? NOT_FOUND_IMAGE,
                                  progressIndicatorBuilder: (context, url, downloadProgress) {
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.kRedPrimary,
                                      ),
                                    );
                                  },
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: banners.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: 15,
                        height: 3,
                        margin: const EdgeInsets.symmetric(horizontal: 2.5),
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(3),
                          color: _current == entry.key ? AppColors.kRedPrimary : const Color(0xffCCCCCC),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
