import 'package:intl/intl.dart';

class CurrencyFormatter {
  static String format(double amount,
      {String locale = 'id_ID', String symbol = 'Rp'}) {
    final formatter = NumberFormat.currency(locale: locale, symbol: symbol);
    return formatter.format(amount);
  }
}
