import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/services/global_methods.dart';
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
        actions: [
          IconButton(
            onPressed: () {
              GlobalMethods.warningDialog(
                title: 'Empty your history?',
                subtitle: 'Are you sure?',
                fct: () {},
                context: context,
              );
            },
            icon: const Icon(IconlyBroken.delete),
          )
        ],
        leading: const BackWidget(),
      ),
    );
  }
}
