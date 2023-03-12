import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/widgets/back_widget.dart';

class ViewedRecentlyScreen extends StatefulWidget {
  static const routeName = '/ViewedRecentlyScreen';
  const ViewedRecentlyScreen({super.key});

  @override
  State<ViewedRecentlyScreen> createState() => _ViewedRecentlyScreenState();
}

class _ViewedRecentlyScreenState extends State<ViewedRecentlyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
      ),
    );
  }
}
