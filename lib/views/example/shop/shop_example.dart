import 'package:flutter/material.dart';

class ShopExample extends StatelessWidget {
  const ShopExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Calcular Descuento'),
      ),
    );
  }
}

enum TipUser { diamont, vip, muggle, oro, admin }
