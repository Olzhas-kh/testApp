import 'package:flutter/material.dart';

class ScrollWrapper extends StatelessWidget {
  final Widget child;
  const ScrollWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: child,
        )
      ],
    );
  }
}
