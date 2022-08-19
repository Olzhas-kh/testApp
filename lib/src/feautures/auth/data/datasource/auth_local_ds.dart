import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDS {}

class AuthLocalDSImpl extends AuthLocalDS {
  final SharedPreferences sharedPreferences;

  AuthLocalDSImpl({required this.sharedPreferences});
}
