//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.freezed.dart';

part 'response_error.g.dart';

@freezed
class ResponseError with _$ResponseError {
  const factory ResponseError({
    required int code,
    required String message,
  }) = _ResponseError;

  factory ResponseError.fromJson(Map<String, Object?> json) =>
      _$ResponseErrorFromJson(json);
}
