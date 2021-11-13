import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

extension StringDateExtension on String {
  String getDateAndMonthName() {
    var parsedDate = DateTime.parse(this);
    final day = parsedDate.day;
    final month = parsedDate.month.getMonthName();
    return '$day de $month';
  }

  String getHourDateAndMonthName() {
    final parsedDate = DateTime.parse(this);
    final day = parsedDate.day;
    final month = parsedDate.month.getMonthName();
    final hours = parsedDate.hour;
    final minutes = parsedDate.minute;
    return '$day de $month às $hours:$minutes';
  }
}



extension DateTimeExtensions on DateTime {
  String getDayMonthYear() {
    return DateFormat('dd-MM-yyyy').format(this);
  }

  String getServerDate() {
    return DateFormat('yyyy-MM-dd hh:mm:ss').format(this);
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

Future openWhatsapp(String phone) async {
  final whatsappUrl = "whatsapp://send?phone=$phone";
  await canLaunch(whatsappUrl)
      ? launch(whatsappUrl)
      : EasyLoading.showError(
          "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed",
          duration: const Duration(seconds: 2));
}
