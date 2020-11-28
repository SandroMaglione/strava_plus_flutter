import 'package:mobile_polimi_project/core/errors/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'async_state.freezed.dart';

@freezed
abstract class AsyncState<T> with _$AsyncState<T> {
  const factory AsyncState.initial() = InitialAsyncState<T>;
  const factory AsyncState.loading() = LoadingAsyncState<T>;
  const factory AsyncState.error(Failure failure) = ErrorAsyncState<T>;
  const factory AsyncState.success(T data) = SuccessAsyncState<T>;
}
