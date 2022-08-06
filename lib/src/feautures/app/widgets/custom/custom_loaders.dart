import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:narxoz/src/core/resources/resources.dart';

const kSpinKitSpinningLines = SpinKitSpinningLines(
  color: AppColors.kPrimaryColor,
  lineWidth: 3,
  size: 80,
);

const kSpinKitCircle = SpinKitCircle(
  color: Colors.white,
  size: 60,
);

const kSpinKitFadingCircle = SpinKitFadingCircle(
  color: Colors.black,
  size: 60,
);

const kWaveLoader = SpinKitWave(
  size: 60,
  color: AppColors.kPrimaryColor,
);
