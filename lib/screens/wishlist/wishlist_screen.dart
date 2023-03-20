import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../screens/wishlist/wishlist_widget.dart';
import '../../widgets/back_widget.dart';

import '../../services/global_methods.dart';
import '../../services/utils.dart';
import '../../widgets/empty_screen.dart';
import '../../widgets/text_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});
  static const routeName = "/WishlistScreen";

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    bool _isEmpty = true;

    return _isEmpty
        ? const EmptyScreen(
            title: 'Your Wishlist Is Empty',
            subtitle: 'Explore more and shortlist some items',
            imagePath: 'assets/images/wishlist.png',
            buttonText: 'Add a wish',
          )
        // ignore: dead_code
        : Scaffold(
            appBar: AppBar(
              centerTitle: true,
              leading: const BackWidget(),
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Theme.of(context).cardColor.withOpacity(0.5),
              title: TextWidget(
                text: 'Wishlist (2)',
                color: color,
                isTitle: true,
                textSize: 22,
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    GlobalMethods.warningDialog(
                      title: 'Empty your Wishlist?',
                      subtitle: 'Are you sure?',
                      fct: () {},
                      context: context,
                    );
                  },
                  icon: Icon(
                    IconlyBroken.delete,
                    color: color,
                  ),
                ),
              ],
            ),
            body: MasonryGridView.count(
                crossAxisCount: 2,
                itemBuilder: (context, index) {
                  return const WishlistWidget();
                }),
          );
  }
}
