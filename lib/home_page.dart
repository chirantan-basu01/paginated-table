import 'package:flutter/material.dart';
import 'my_data.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final DataTableSource ourData = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paginated Table'),
        centerTitle: true,
      ),
      body: PaginatedDataTable(
        source: ourData,
        header: const Center(
          child: Text('Bank account details'),
        ),
        columnSpacing: 20,
        horizontalMargin: 30,
        showFirstLastButtons: true,
        rowsPerPage: 10,
        columns: const [
          DataColumn(
              label:
                  Text('S.No', style: TextStyle(fontWeight: FontWeight.w400))),
          DataColumn(
              label:
                  Text('Name', style: TextStyle(fontWeight: FontWeight.w400))),
          DataColumn(
              label: Text('Account Type',
                  style: TextStyle(fontWeight: FontWeight.w400))),
          DataColumn(
              label: Text('Amount',
                  style: TextStyle(fontWeight: FontWeight.w400))),
        ],
      ),
    );
  }
}
