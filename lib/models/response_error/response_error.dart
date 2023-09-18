//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.freezed.dart';

part 'response_error.g.dart';

@freezed
class ResponseError with _$ResponseError {
  const factory ResponseError({
    @Default(null) int? code,
    @Default(null) String? message,
  }) = _ResponseError;

  factory ResponseError.fromJson(Map<String, Object?> json) =>
      _$ResponseErrorFromJson(json);
}

const List<String> kResponseErrorColumns = [
  'code',
  'message',
];
