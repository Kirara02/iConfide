import 'package:intl/intl.dart';

String formatCurrency(num number, {String symbol = 'Rp '}) {
  return NumberFormat.currency(
    locale: 'id',
    decimalDigits: 2,
    symbol: symbol,
  ).format(number);
}
