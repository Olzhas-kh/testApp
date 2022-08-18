import 'package:dio/dio.dart';
import 'package:narxoz/src/core/network/dio_module.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IDependenciesStorage {
  /// External
  Dio get dio;
  SharedPreferences get sharedPreferences;
  // PackageInfo get packageInfo;
  // FirebaseAnalytics get analytics;

  // /// Common
  // AppDatabase get database;
  // IUserRepository get userRepository;
  // IAudioRepository get audioRepository;

  // /// Network
  // NetworkExecuter get networkExecuter;
  // NetworkConnectivity get connectionChecker;
  // NetworkDecoder get decoder;
  // NetworkCreator get creator;

  // /// Repositories
  // IAuthRepository get authRepository;

  // IMyToursRepository get myToursRepository;

  // IPromotedToursRepository get promotedToursRepository;

  // IHomeRepository get homeRepository;

  // IInstructionsRepository get instructionsRepository;

  // IPrayersRepository get prayersRepository;

  // IProfileRepository get profileRepository;

  // IWalletRepository get walletRepository;

  void close();
}

class DependenciesStorage implements IDependenciesStorage {
  @override
  final SharedPreferences sharedPreferences;
  // final PackageInfo packageInfo;

  DependenciesStorage({
    required this.sharedPreferences,
    // required this.packageInfo,
  });

  Dio? _dio;

  // NetworkConnectivity? _connectionChecker;

  // FirebaseAnalytics? _analytics;
  // AppDatabase? _database;
  // NetworkExecuter? _networkExecuter;

  // IUserRepository? _userRepository;
  // IAudioRepository? _audioRepository;

  // NetworkDecoder? _decoder;
  // NetworkCreator? _creator;

  // @override
  // FirebaseAnalytics get analytics => _analytics ??= FirebaseAnalytics.instance;

  // @override
  // AppDatabase get database => _database ??= AppDatabase();

  @override
  Dio get dio => _dio ??= DioModule.configureDio(
      // userRepository,
      // packageInfo,
      );

  // @override
  // NetworkExecuter get networkExecuter => _networkExecuter ??= NetworkExecuter(
  //       dio: dio,
  //       creator: creator,
  //       decoder: decoder,
  //       networkConnectivity: connectionChecker,
  //     );

  // @override
  // NetworkDecoder get decoder => _decoder ??= NetworkDecoder();

  // @override
  // NetworkCreator get creator => _creator ??= NetworkCreator();

  // @override
  // NetworkConnectivity get connectionChecker =>
  //     _connectionChecker ??= NetworkConnectivity();

  // @override
  // IUserRepository get userRepository =>
  //     _userRepository ??= UserRepositoryImpl(preferences: sharedPreferences);

  // @override
  // IAudioRepository get audioRepository =>
  //     _audioRepository ??= AudioRepositoryImpl();

  // @override
  // IAuthRepository get authRepository => AuthRepositoryImpl(
  //       client: networkExecuter,
  //       userRepository: userRepository,
  //     );

  // @override
  // IHomeRepository get homeRepository =>
  //     HomeRepositoryImpl(client: networkExecuter);

  // @override
  // IInstructionsRepository get instructionsRepository =>
  //     InstructionsRepositoryImpl(client: networkExecuter);

  // @override
  // IPrayersRepository get prayersRepository => PrayersRepositoryImpl(
  //       client: networkExecuter,
  //       prayersDao: PrayersDao(database),
  //       audioRepository: audioRepository,
  //       networkConnectivity: connectionChecker,
  //     );

  // @override
  // IProfileRepository get profileRepository =>
  //     ProfileRepositoryImpl(client: networkExecuter);

  // @override
  // IWalletRepository get walletRepository =>
  //     WalletRepositoryImpl(client: networkExecuter);

  // @override
  // IMyToursRepository get myToursRepository =>
  //     MyToursRepositoryImpl(client: networkExecuter);

  // @override
  // IPromotedToursRepository get promotedToursRepository =>
  //     PromotedToursRepositoryImpl(client: networkExecuter);

  @override
  void close() {
    _dio?.close();
    // _database?.close();
  }
}
