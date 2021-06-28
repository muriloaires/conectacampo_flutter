import 'package:intl/intl.dart';

extension StringDateExtension on String {
  String getDateAndMonthName() {
    var parsedDate = DateTime.parse(this);
    final day = parsedDate.day;
    final month = parsedDate.month.getMonthName();
    return '$day de $month';
  }
}

extension DateTimeExtensions on DateTime {
  String getDayMonthYear() {
    return DateFormat('dd-MM-yyyy').format(this);
  }
}

extension IntDateExtensions on int {
  String getMonthName() {
    switch (this) {
      case 1:
        return 'Janeiro';
      case 2:
        return 'Fevereiro';
      case 3:
        return 'Março';
      case 4:
        return 'Abril';
      case 5:
        return 'Maio';
      case 6:
        return 'Junho';
      case 7:
        return 'Julho';
      case 8:
        return 'Agosto';
      case 9:
        return 'Setembro';
      case 10:
        return 'Outubro';
      case 11:
        return 'Novembro';
      case 12:
        return 'Dezembro';
      default:
        return '';
    }
  }
}
