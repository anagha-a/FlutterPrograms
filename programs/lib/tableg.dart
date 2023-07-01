import 'package:flutter/material.dart';

class Tabless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: DataTable(border: TableBorder.all(width: 4,style: BorderStyle.solid),
            columns: [
              DataColumn(
                  label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              )),
              DataColumn(
                  label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              )),
              DataColumn(
                  label: Text(
                'RollNo',
                style: TextStyle(fontStyle: FontStyle.italic),
              )),
              DataColumn(
                  label: Text(
                'Salary',
                style: TextStyle(fontStyle: FontStyle.italic),
              ))
            ],
            rows: [
              DataRow(cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('20')),
                DataCell(Text('1')),
                DataCell(Text('20000')),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Maya')),
                DataCell(Text('20')),
                DataCell(Text('2')),
                DataCell(Text('10000')),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('Rani')),
                DataCell(Text('19')),
                DataCell(Text('3')),
                DataCell(Text('15000')),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text('John')),
                DataCell(Text('20')),
                DataCell(Text('4')),
                DataCell(Text('20000')),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
