import 'package:dartz/dartz.dart';
import 'package:mobile_polimi_project/core/errors/failure.dart';

/// Maps the [Left] attribute of the [Task] (from dartz) to
/// a [Failure] yielded inside the application
extension TaskFailure<U> on Task<Either<Object, U>> {
  /// Map [Left] to [Failure] object
  Task<Either<Failure, U>> mapLeftToFailure() => map(
        (either) => either.leftMap(
          (obj) {
            try {
              // Implement some app-specific method to handle DioError(s)
              return obj as Failure;
            } catch (e) {
              return const GenericFailure.unexpected();
            }
          },
        ),
      );
}

/// Executes all the methods required to return either a [Failure] or [U]
extension TaskRunAll<U> on Task<U> {
  /// Run all methods: attempt(), mapLeftToFailure(), and run()
  Future<Either<Failure, U>> runAll() => attempt().mapLeftToFailure().run();
}
