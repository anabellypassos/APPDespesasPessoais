import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'models/transaction.dart';



main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children:<Widget> [
                  Container(
                    margin:const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      )
                    ) ,
                    padding: const EdgeInsets.all(10),
                    child: Text (
                    'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,

                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children:<Widget> [
                       Text(
                        tr.title,
                       style:const TextStyle(
                     fontSize: 16 ,
                     fontWeight: FontWeight.bold,
                        ) ,
                       ),
                       Text
                       (DateFormat('d MMM y').format(tr.date),
                       style: const TextStyle(
                     color: Colors.grey
                     ),
                       ),
                    ],
                    )
                  ],
                  ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
