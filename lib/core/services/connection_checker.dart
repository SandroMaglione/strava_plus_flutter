import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_polimi_project/core/errors/connection_failure.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:mobile_polimi_project/core/extensions/dartz_extension.dart';

/// Interface that exposes method to handle internet connection availability
abstract class ConnectionChecker {
  /// Default constructor
  const ConnectionChecker();

  /// Check if a valid internet connection is available
  Future<bool> get isConnected;

  /// Executes [connectionAvailable] if [isConnected] is true.
  /// When [isConnected] is false or [connectionAvailable] throws an
  /// [Exception] then execute [noConnection] if defined
  Future<Either<Failure, T>> connectionCheck<T>({
    @required Future<T> Function() connectionAvailable,
    Future<T> Function() noConnection,
    Failure Function(DioError dioError) onDioError,
  }) async =>
      (await isConnected)
          ? (await Task(
              () async => connectionAvailable(),
            ).runAllNoException(
              onDioError: onDioError,
            ))
              .fold(
              (failureOrException) async => noConnection != null
                  ? Task(
                      () async => noConnection(),
                    ).runAll(onDioError: onDioError)
                  : failureOrException.fold(
                      (l) => throw l,
                      (failure) => Future.value(
                        left<Failure, T>(failure),
                      ),
                    ),
              (data) => right<Failure, T>(data),
            )
          : noConnection != null
              ? Task(
                  () async => noConnection(),
                ).runAll(onDioError: onDioError)
              : Future.value(left<Failure, T>(const ConnectionFailure()));

  /// Try to run [request], catch possible [Failure] on the [onFailure] callback
  Future<Either<Failure, T>> failureCheck<T>(
    Future<T> Function() request, {
    Future<T> Function(Failure failure) onFailure,
  }) async =>
      (await Task(
        () async => request(),
      ).runAllNoException())
          .fold(
        (failureOrException) async => failureOrException.fold(
          (l) => throw l,
          (failure) => Task(
            () async => onFailure(failure),
          ).runAll(),
        ),
        (data) => right<Failure, T>(data),
      );
}

/// [ConnectionChecker] implementation using [DataConnectionChecker] package
@Injectable(as: ConnectionChecker)
class DataConnectionCheckerImpl extends ConnectionChecker {
  /// Reference to [DataConnectionChecker] using data_connection_checker package
  final Connectivity connectivity;

  /// Initialize [DataConnectionChecker] required parameter
  const DataConnectionCheckerImpl(this.connectivity) : super();

  @override
  Future<bool> get isConnected async => connectivity.checkConnectivity().then(
        (c) => c == ConnectivityResult.mobile || c == ConnectivityResult.wifi,
      );
}

/// Register injectable [Connectivity]
@module
abstract class Cegisterconnectivity {
  /// Get sync [Connectivity]
  Connectivity get connectivity => Connectivity();
}
