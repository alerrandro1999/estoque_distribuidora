import 'package:estoque_ger/home/commons/mercadoria.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget space = const SizedBox();

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Adicionar nova mercadoria ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          actions: <Widget>[
            const TextField(
              decoration: InputDecoration(hintText: 'Nome'),
            ),
            space,
            const TextField(
              decoration: InputDecoration(hintText: 'Valor'),
            ),
            space,
            const TextField(
              decoration: InputDecoration(hintText: 'Ex: 2 Litros'),
            ),
            space,
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Salvar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Cancelar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 238, 245),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _dialogBuilder(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              space,
              const Text(
                "R\$ 2.500,00",
                style: TextStyle(fontSize: 35),
              ),
              const Text(
                "Vendas do més",
                style: TextStyle(fontSize: 15),
              ),
              space,
              const Mercadoria(
                  name: 'Coca - Cola', valor: '3,50', unidade: '350 ml'),
            ],
          ),
        ),
      ),
    );
  }
}
