import 'package:rent_and_drive/model/customer.dart';
import 'package:rent_and_drive/model/supplier.dart';

class Invoice {
  final InvoiceInfo info;
  final Supplier supplier;
  final Customer customer;
  final List<InvoiceItem> items;

  const Invoice({
    this.info,
    this.supplier,
    this.customer,
    this.items,
  });
}

class InvoiceInfo {
  final String description;
  final String number;
  final DateTime date;

  const InvoiceInfo({
    this.description,
    this.number,
    this.date,
  });
}

class InvoiceItem {
  final String car;
  final DateTime date;
  final DateTime dueDate;
  final int days;
  final double price;

  const InvoiceItem({
    this.car,
    this.date,
    this.dueDate,
    this.days,
    this.price,
  });
}
