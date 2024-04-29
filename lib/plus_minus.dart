import 'package:flutter/material.dart';

class PlusMinus extends StatefulWidget {
  const PlusMinus({super.key});

  @override
  State<PlusMinus> createState() {
    return _PlusMinus();
  }
}

class _PlusMinus extends State<PlusMinus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.green[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exposure_minus_1),
            style: IconButton.styleFrom(iconSize: 35),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Text(
              'number',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.plus_one),
            style: IconButton.styleFrom(
              iconSize: 35,
            ),
          ),
        ],
      ),
    );
  }
}
