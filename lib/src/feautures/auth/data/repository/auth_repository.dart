// ignore: unused_element
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/core/network/network_info.dart';
import 'package:narxoz/src/core/resources/constants.dart';
import 'package:narxoz/src/feautures/auth/data/datasource/auth_local_ds.dart';
import 'package:narxoz/src/feautures/auth/data/datasource/auth_remote_ds.dart';
import 'package:narxoz/src/feautures/auth/data/model/user_dto.dart';

const _tag = 'AuthRepository';

abstract class AuthRepository {
  Future<Either<Failure, UserDTO>> authCheck();

  Future<Either<Failure, String>> logOut({
    bool onlyLocally = false,
  });

  Future<Either<Failure, UserDTO>> signIn({
    required String login,
    required String password,
  });
}

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDS remoteDS;
  final AuthLocalDS localDS;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDS,
    required this.localDS,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserDTO>> authCheck() async {
    try {
      final user = await localDS.getUserFromCache();
      log(
        'AuthRepositoryImpl authCheck:: ${user.token}, userID:: ${user.login}',
        name: _tag,
      );
      if (user.token == null) {
        // && user.verifyStatus != 'wait') {
        return Left(CacheFailure(message: 'Пустой токен!'));
      }
      return Right(user);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, String>> logOut({
    bool onlyLocally = false,
  }) async {
    try {
      if (onlyLocally) {
        await localDS.removeUserFromCache();

        return const Right('Locally Deleted');
      } else {
        final String msg = await remoteDS.logOut();
        await localDS.removeUserFromCache();

        return Right(msg);
      }
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserDTO>> signIn({
    required String login,
    required String password,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final String token = await remoteDS.login(
          login: login,
          password: password,
        );

        final UserDTO generateUser = UserDTO(login: login, token: token);

        await localDS.saveUserToCache(user: generateUser);

        return Right(generateUser);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }
}
