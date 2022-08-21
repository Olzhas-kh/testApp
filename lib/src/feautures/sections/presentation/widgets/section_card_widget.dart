import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';

class SectionCardPayload {
  final String text;
  final String localImage;
  final void Function()? onTap;

  SectionCardPayload({
    required this.text,
    required this.onTap,
    required this.localImage,
  });
}

class SectionCard extends StatelessWidget {
  final SectionCardPayload sectionCardPayload;
  const SectionCard({
    required this.sectionCardPayload,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: AppDecorations.dropShadow,
        color: AppColors.kWhite,
        // image: SectionCard
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: sectionCardPayload.onTap,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: MediaQuery.of(context).size.width * 3 / 5,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    sectionCardPayload.localImage,
                    // 'https://pbs.twimg.com/media/FJ96vOQWUAwbIah?format=jpg&name=large',
                    fit: BoxFit.cover,
                    // width: 154,
                    // height: 154,
                    // loadingBuilder: (context, child, loadingProgress) {
                    //   if (loadingProgress == null) {
                    //     return child;
                    //   }
                    //   return Center(
                    //     child: CircularProgressIndicator(
                    //       color: AppColors.kRedPrimary,
                    //       value: loadingProgress.expectedTotalBytes != null
                    //           ? loadingProgress.cumulativeBytesLoaded /
                    //               loadingProgress.expectedTotalBytes!
                    //           : null,
                    //     ),
                    //   );
                    // },
                    errorBuilder: (
                      BuildContext context,
                      Object exception,
                      StackTrace? stackTrace,
                    ) {
                      return Center(child: Text(context.appLocale.imageError));
                    },
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: TrapeziumClipper(),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 3 / 5,
                // alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Spacer(),
                    Flexible(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 6 / 15,
                          maxHeight: 84,
                        ),
                        child: Text(
                          sectionCardPayload.text,
                          softWrap: true,
                          style: sectionCardPayload.text.length > 15
                              ? AppTextStyles.gilroy16w500
                              : AppTextStyles.gilroy20w500,
                          // style: ,
                        ),
                      ),
                    ),
                    // const Spacer(),
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

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width * 2 / 3, size.height);
    path.lineTo(0.0, size.height);
    // path.lineTo(size.width, size.height);

    // path.lineTo(size.width * 2 / 3, 0.0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}
