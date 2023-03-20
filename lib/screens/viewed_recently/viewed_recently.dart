import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../screens/viewed_recently/viewed_widget.dart';
import '../../services/global_methods.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/text_widget.dart';

import '../../services/utils.dart';
import '../../widgets/empty_screen.dart';

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
    bool _isEmpty = true;
    if (_isEmpty == true) {
      return const EmptyScreen(
        title: 'Your cart is empty',
        subtitle: 'Add something and make me happy',
        buttonText: 'Shop now',
        imagePath: "assets/images/history.png",
      );
    } else {
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
          },
        ),
      );
    }
  }
}
