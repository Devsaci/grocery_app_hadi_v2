import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../const/Constss.dart';
import '../inner_screens/feeds_screen.dart';
import '../inner_screens/on_sale_screen.dart';
import '../services/global_methods.dart';
import '../services/utils.dart';
import '../widgets/feed_items.dart';
import '../widgets/on_sale_widget.dart';
import '../widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final List<String> offerImages = [
  //   'assets/images/offres/Offer1.jpg',
  //   'assets/images/offres/Offer2.jpg',
  //   'assets/images/offres/Offer3.jpg',
  //   'assets/images/offres/Offer4.jpg'
  // ];

  //
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    // final themeState = utils.getTheme;
    final Color color = Utils(context).color;
    Size size = utils.getScreenSize;
    // GlobalMethods globalMethods = GlobalMethods();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.33,
              child: Swiper(
                autoplay: true,
                itemCount: Constss.offerImages.length,
                itemBuilder: (BuildContext context, index) {
                  return Image.asset(
                    Constss.offerImages[index],
                    fit: BoxFit.fill,
                  );
                },
                pagination: const SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                    color: Colors.white,
                    activeColor: Colors.red,
                  ),
                ),
                //control: const SwiperControl(color: Colors.black),
              ),
            ),
            const SizedBox(height: 6),
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, OnSaleScreen.routeName);
                print("OnSaleScreen");
                GlobalMethods.navigateTo(
                  ctx: context,
                  routeName: OnSaleScreen.routeName,
                );
              },
              child: TextWidget(
                text: 'View all',
                maxLines: 1,
                color: Colors.blue,
                textSize: 20,
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Row(
                    children: [
                      TextWidget(
                        text: 'On sale'.toUpperCase(),
                        color: Colors.red,
                        textSize: 22,
                        isTitle: true,
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        IconlyLight.discount,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: SizedBox(
                    height: size.height * 0.24,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return const OnSaleWidget();
                      },
                      itemCount: 6,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Our Product",
                    color: color,
                    textSize: 22,
                    isTitle: true,
                  ),
                  // const Spacer(),
                  TextButton(
                    onPressed: () {
                      print("+++++++++ FeedsScreen ++++++++++");
                      GlobalMethods.navigateTo(
                        ctx: context,
                        routeName: FeedsScreen.routeName,
                      );
                      print("******** FeedsScreen *******");
                    },
                    child: TextWidget(
                      text: 'Browse  all',
                      maxLines: 1,
                      color: Colors.blue,
                      textSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            // FeedsWidget(),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              padding: EdgeInsets.zero,
              childAspectRatio: size.width / (size.height * 0.59),
              children: List.generate(4, (index) => const FeedsWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
