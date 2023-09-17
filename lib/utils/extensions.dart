import 'package:intl/intl.dart';

final DateFormat dateLongFormat = DateFormat.yMMMMEEEEd();
final DateFormat dateFormat = DateFormat.yMd();
final DateFormat dateTimeFormat = DateFormat.yMMMMEEEEd().add_jms();

extension DateTimeX on DateTime? {
  String get date => this == null ? '' : dateFormat.format(this!);
  String get dateTime => this == null ? '' : dateTimeFormat.format(this!);
  String get dateLong => this == null ? '' : dateLongFormat.format(this!);
}
