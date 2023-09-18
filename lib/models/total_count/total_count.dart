//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_count.freezed.dart';

part 'total_count.g.dart';

@freezed
class TotalCount with _$TotalCount {
  const factory TotalCount({
    @Default(null) int? count,
  }) = _TotalCount;

  factory TotalCount.fromJson(Map<String, Object?> json) =>
      _$TotalCountFromJson(json);
}

const List<String> kTotalCountColumns = [
  'count',
];
