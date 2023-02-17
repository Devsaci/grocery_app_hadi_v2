import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/widgets/back_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
      ),
    );
  }
}
