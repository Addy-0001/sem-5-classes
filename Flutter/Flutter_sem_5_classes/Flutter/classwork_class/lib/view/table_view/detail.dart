import 'package:flutter/material.dart';

class TableView extends StatefulWidget {
  const TableView({super.key});

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TABLE', textAlign: TextAlign.center,),
      ),
      body: displayDatatable(),
    );
  }

}



Widget displayDatatable(){
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: DataTable(
      border: TableBorder.all(color: Colors.black),
      headingRowColor: MaterialStateColor.resolveWith((states) => Colors.amberAccent,),
      columns: [
        DataColumn(
          label: Expanded(
            child: Text('Name', textAlign: TextAlign.center,),
          )
        ),
        DataColumn(
          label: Expanded(
            child: Text('Roll no', textAlign: TextAlign.center,),
          )
        ),
        DataColumn(
          label: Expanded(
            child: Text('Action', textAlign: TextAlign.center,),
          )
        ),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Expanded(
              child: Center(
                child: Text('Ayush'),
              ),
            )),
            DataCell(Expanded(
              child: Center(
                child: Text('17'),
              ),
            )),
            DataCell(Row(children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
            ],))
          ]
        )
      ],
    ),
  );
}
