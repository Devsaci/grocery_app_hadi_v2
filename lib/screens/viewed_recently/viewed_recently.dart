import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/screens/viewed_recently/viewed_widget.dart';
import 'package:grocery_app_hadi_v1/services/global_methods.dart';
import 'package:grocery_app_hadi_v1/widgets/back_widget.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

import '../../services/utils.dart';

class ViewedRecentlyScreen extends StatefulWidget {
  static const routeName = '/ViewedRecentlyScreen';
  const ViewedRecentlyScreen({super.key});

  @override
  State<ViewedRecentlyScreen> createState() => _ViewedRecentlyScreenState();
}

class _ViewedRecentlyScreenState extends State<ViewedRecentlyScreen> {
  @override
  Widget build(BuildContext context) {
    Color color = Utils(context).color;
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
            icon: const Icon(
              IconlyBroken.delete,
            ),
            color: color,
          )
        ],
        leading: const BackWidget(),
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: TextWidget(
          text: "History",
          color: color,
          textSize: 20,
        ),
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (ctx, index) {
            return const ViewedRecentlyWidget();
          }),
    );
  }
}
