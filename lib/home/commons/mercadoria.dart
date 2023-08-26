import 'package:flutter/material.dart';

class Mercadoria extends StatelessWidget {
  final String name;
  final String valor;
  final String unidade;
  const Mercadoria(
      {super.key,
      required this.name,
      required this.valor,
      required this.unidade});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text("R\$ $valor"),
                Text(unidade),
              ],
            ),
          ),
          const Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          const Icon(
            Icons.add,
            size: 30,
          )
        ],
      ),
    );
  }
}
