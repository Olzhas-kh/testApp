import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/custom_button.dart';
import 'package:narxoz/src/feautures/app/widgets/custom/scroll_wrapper.dart';
import 'package:narxoz/src/feautures/home/presentation/widgets/images_widget.dart';

class HostelPage extends StatefulWidget {
  const HostelPage({super.key});

  @override
  State<HostelPage> createState() => _HostelPageState();
}

class _HostelPageState extends State<HostelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollWrapper(
          child: Column(
            children: [
              const ImagesWidget(),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Сроки заселения:',
                      style: AppTextStyles.gilroy19w500,
                    ),
                    Text(
                      '16.07.22 - 20.08.22',
                      style: AppTextStyles.gilroy19w500,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        boxShadow: AppDecorations.dropShadow,
                      ),
                      child: CustomButton(
                        height: 48,
                        body: Row(),
                        onClick: () {},
                        style: whiteButtonStyle(),
                      ),
                    ),
                    const SizedBox(height: 19),
                    CustomButton(
                      height: 48,
                      body: Row(),
                      onClick: () {},
                      style: redButtonStyle(elevation: 1),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
