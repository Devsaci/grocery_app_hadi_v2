// 33. Implement the feeds screen

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/widgets/feed_items.dart';

import '../services/utils.dart';
import '../widgets/text_widget.dart';

class FeedsScreen extends StatefulWidget {
  static const routeName = "/FeedsScreenState";
  const FeedsScreen({Key? key}) : super(key: key);
  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  final TextEditingController _searchTextController = TextEditingController();

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            IconlyLight.arrowLeft2,
            color: color,
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: TextWidget(
          text: 'All Products',
          color: color,
          textSize: 20.0,
          isTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _searchTextController,
              onChanged: (value) {
                setState(() {});
              },
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: size.width / (size.height * 0.59),
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              children: List.generate(20, (index) {
                return const FeedsWidget();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
