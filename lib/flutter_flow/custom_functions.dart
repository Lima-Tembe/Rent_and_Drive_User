String daterange(
  DateTime datepicked1,
  DateTime datepicked2,
) {
  int days;
  days = datepicked2.difference(datepicked1).inDays;
  return 'Total de dias: $days';
}

String pricetotal(
  DateTime data1,
  DateTime data2,
  int price,
) {
  int days;
  int totalprice;
  days = data1.difference(data2).inDays;
  totalprice = price * days;
  return totalprice.toString();

  // Add your function code here!
}

int daysToPay(
  DateTime datepicked1,
  DateTime datepicked2,
) {
  // get the difference between 2 dates
  return datepicked2.difference(datepicked1).inDays;
}

int priceToPay(
  int days,
  int price,
) {
  return (days + 1) * price;
}

String lastfourdigits(int cardNumber) {
  // get the last four digits from a number
  String raw = cardNumber.toString();
  String truncated = (raw.length > 4) ? raw.substring(raw.length - 4) : "";
  return truncated;
}

int totalSpent(
  int price,
  int totalAmount,
) {
  // add price to totalAmount
//  int price = 10;
//  int totalAmount = 100;
  return price + totalAmount;
}
