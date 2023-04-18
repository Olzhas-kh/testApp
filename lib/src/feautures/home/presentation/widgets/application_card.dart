import 'package:flutter/material.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class ApplicationCard extends StatelessWidget {
  final String title;
  final String? body;
  final String? titleContent;
  final void Function()? onTap;
  const ApplicationCard({
    super.key,
    required this.title,
    this.body,
    this.titleContent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return  Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                // height: 56,
                decoration: BoxDecoration(
                  boxShadow: AppDecorations.dropShadow,
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: AppTextStyles.gilroy20w500Red,
                            ),
                            if (titleContent != null) const SizedBox(height: 10),
                            if (titleContent != null)
                              Text(
                                titleContent!,
                                style: AppTextStyles.gilroy15w500,
                              ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.kRedPrimary,
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      );
    
  }
}
