import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../services/utils.dart';

class HeartBTN extends StatelessWidget {
  const HeartBTN({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    return GestureDetector(
      onTap: () {
        if (kDebugMode) {
          print('print heart button is pressed');
        }
      },
      child: const Icon(
        IconlyBold.heart,
        size: 20,
        color: Colors.red,
      ),
    );
  }
}
