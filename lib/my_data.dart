import 'package:flutter/material.dart';
import 'package:paginated_table/raw_data.dart';

class MyData extends DataTableSource {
  List<dynamic> data = rawData;

  @override
  DataRow? getRow(int index) {
    return DataRow(
      cells: [
        DataCell(Text(data[index]['id'])),
        DataCell(Text(data[index]['Name'])),
        DataCell(Text(data[index]['Account'])),
        DataCell(Text(data[index]['Amount'])),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
