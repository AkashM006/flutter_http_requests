import 'package:http_requests/src/utils/errors.dart';

abstract class DataState<T> {
  final T? data;
  final CustomError? error;

  const DataState({this.data, this.error});
  C fold<C>(
      C Function(T? data) onSuccess, C Function(CustomError error) onFailure) {
    if (this.error != null) return onFailure(this.error!);
    return onSuccess(data);
  }
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({required T data}) : super(data: data);
}

class DataFailure<T> extends DataState<T> {
  const DataFailure({required CustomError error}) : super(error: error);
}
