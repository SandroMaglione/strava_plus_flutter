import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';

/// Maps the [Left] attribute of the [Task] (from dartz) to
/// a [Failure] yielded inside the application
extension TaskFailure<U> on Task<Either<Object, U>> {
  /// Map [Left] to [Failure] object if possible, otherwise throw [Exception]
  Task<Either<Failure, U>> mapLeftToFailure({
    Failure Function(DioError) onDioError,
  }) =>
      map(
        (either) => either.leftMap(
          (exception) {
            try {
              if (exception is DioError) {
                /// When [DioError], throw custom error or [GenericFailure]
                return onDioError != null
                    ? onDioError(exception)
                    : GenericFailure(exception);
              } else {
                /// Try to cast [Object] to [Failure]
                return exception as Failure;
              }
            } catch (e) {
              /// If casting is not possible, unknown exception, crash the app!
              throw exception;
            }
          },
        ),
      );

  /// Map [Left] to [Failure] object if possible, otherwise return [Exception] (not throw!)
  Task<Either<Either<Object, Failure>, U>> mapLeftToFailureOrException({
    Failure Function(DioError) onDioError,
  }) =>
      map(
        (either) => either.leftMap(
          (exception) {
            try {
              if (exception is DioError) {
                return right(
                  onDioError != null
                      ? onDioError(exception)
                      : GenericFailure(exception),
                );
              } else {
                return right(exception as Failure);
              }
            } catch (e) {
              return left(exception);
            }
          },
        ),
      );
}

/// Executes all the methods required to return either a [Failure] or [U]
extension TaskRunAll<U> on Task<U> {
  /// Run all methods: `attempt()`, `mapLeftToFailure()`, and `run()`
  Future<Either<Failure, U>> runAll({
    Failure Function(DioError dioError) onDioError,
  }) =>
      attempt().mapLeftToFailure(onDioError: onDioError).run();

  /// Run all methods without throwing exceptions: `attempt()`, `mapLeftToFailureOrException()`, and `run()`
  Future<Either<Either<Object, Failure>, U>> runAllNoException({
    Failure Function(DioError dioError) onDioError,
  }) =>
      attempt().mapLeftToFailureOrException(onDioError: onDioError).run();
}

/// Extension methods to manage [IList]
extension IListExtension<E> on IList<E> {
  /// Update the element at [index] based on [predicate] an return list
  /// with the updated element
  Option<IList<E>> updateAtIndex(int index, E Function(E) predicate) => option(
      index < this.length() && !this.isEmpty,
      this.mapWithIndex((i, item) => i != index ? item : predicate(item)));

  /// Sort by returning an [int]
  /// - `0`: Equals (do not change order)
  /// - `-1`: place first element **before** the second element
  /// - `+1`: place first element **after** the second element
  ///
  /// ```dart
  /// [1, 2]
  /// // 0 -> [1, 2]
  /// // -1 -> [1, 2]
  /// // +1 -> [2, 1]
  /// ```
  IList<E> sortByInt(int Function(E e1, E e2) predicate) => this.sort(
        order(
          (p1, p2) {
            final compare = predicate(p1, p2);
            return compare == 0
                ? Ordering.EQ
                : compare > 0
                    ? Ordering.LT
                    : Ordering.GT;
          },
        ),
      );

  /// Sort list based on [DateTime] in **DESC** order
  /// i.e. from the most recent to the oldest
  IList<E> sortByDate(DateTime Function(E e) date) =>
      this.sortByInt((e1, e2) => date(e1).compareTo(date(e2)));
}
