extension DoubleExtension on double {
  double getHeightProporsions(
    double mqh, {
    double deviceHeight = 812,
  }) =>
      mqh * (this / deviceHeight);

  double getWidthProportions(
    double mqh,
    { double deviceWidth = 375,}
  ) => mqh * (this / deviceWidth);

  // String toCapitalized() =>
  //     length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  // String toTitleCase() => replaceAll(RegExp(' +'), ' ')
  //     .split(' ')
  //     .map((str) => str.toCapitalized())
  //     .join(' ');
}
