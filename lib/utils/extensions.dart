import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:timeago/timeago.dart' as timeago;

final DateFormat dateLongFormat = DateFormat.yMMMMEEEEd();
final DateFormat dateFormat = DateFormat.yMd();
final DateFormat dateTimeFormat = DateFormat.yMMMMEEEEd().add_jms();

extension DateTimeX on DateTime? {
  String get date => this == null ? '' : dateFormat.format(this!);
  String get dateTime => this == null ? '' : dateTimeFormat.format(this!);
  String get dateLong => this == null ? '' : dateLongFormat.format(this!);
}

extension VehicleResponseStatusText on VehicleResponse {
  String get statusText =>
      "To do: $pending, Started: $started, Finished: $finished";
  int get pending => vehicleTasks?.where((e) => !e.started).length ?? 0;
  int get started =>
      vehicleTasks?.where((e) => e.started && !e.finished).length ?? 0;
  int get finished => vehicleTasks?.where((e) => e.finished).length ?? 0;
}

extension VehicleTaskX on VehicleTask {
  Color get color {
    return (deleted ?? false)
        ? Colors.red
        : finished
            ? Colors.green
            : started
                ? Colors.yellow
                : Colors.blueGrey;
  }

  bool get started => startedAt != null;
  bool get finished => finishedAt != null;
}
