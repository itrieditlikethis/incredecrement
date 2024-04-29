import 'package:flutter/material.dart';

class PlusMinus extends StatefulWidget {
  const PlusMinus({super.key});

  @override
  State<PlusMinus> createState() {
    return _PlusMinus();
  }
}

class _PlusMinus extends State<PlusMinus> {
  late int number;

  @override
  void initState() {
    number = 100;
    super.initState();
  }

  void onMinus() {
    setState(() {
      number--;
    });
  }

  void onPlus() {
    setState(() {
      number++;
    });
  }

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
            onPressed: onMinus,
            icon: const Icon(Icons.exposure_minus_1),
            style: IconButton.styleFrom(iconSize: 35),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Text(
              '$number',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: onPlus,
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
