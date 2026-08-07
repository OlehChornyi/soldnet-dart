import 'package:intl/intl.dart';

String formattedDateGet(String rawDate) {
  final date = DateTime.parse(rawDate).toLocal();

  return DateFormat('dd.MM.yyyy HH:mm').format(date);
}
