import 'components/trasaction_user.dart';

import 'package:flutter/material.dart';




main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20
          ),
        backgroundColor: Colors.purple,

        actions: <Widget>[
          IconButton(
             icon: const Icon(Icons.add),
             color: Colors.white,
             onPressed: (){},
             )
        ],
      ),
      body: const SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: Card(
                color: Color.fromARGB(255, 196, 56, 232),
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
            TransactionUser(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed:(){} ,
        
      ) ,
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
    );
  }
}
