// ignore_for_file: lines_longer_than_80_chars, comment_references

import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
/// Global variables
/// * [GlobalKey<NavigatorState>]
class GlobalVariable {
  /// This global key is used in material app for navigation through firebase notifications.
  /// [navState] usage can be found in [notification_notifier.dart] file.
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
}
