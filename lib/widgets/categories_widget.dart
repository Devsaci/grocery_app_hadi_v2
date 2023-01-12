import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/provider/dark_theme_provider.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    required this.catText,
    required this.imgPath,
    required this.passedColor,
  }) : super(key: key);

  final String catText, imgPath;
  final Color passedColor;

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    // ignore: no_leading_underscores_for_local_identifiers
    double _screenWidth = MediaQuery.of(context).size.width;
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return InkWell(
      onTap: () {
        print("Category Pressed");
      },
      child: Container(
        // height: _screenWidth * 1.0,
        decoration: BoxDecoration(
          color: passedColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: passedColor.withOpacity(0.9),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: _screenWidth * 0.3,
              width: _screenWidth * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imgPath,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            TextWidget(
              text: catText,
              color: color,
              textSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
