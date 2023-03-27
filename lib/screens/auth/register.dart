import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/const/Constss.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/RegisterScreen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Swiper(
          duration: 1800,
          autoplayDelay: 6000,
          itemBuilder: (context, index) {
            return Image.asset(
              Constss.authImagesPaths[index],
              fit: BoxFit.cover,
            );
          },
          autoplay: true,
          itemCount: Constss.authImagesPaths.length,
        ),
        Container(
          color: Colors.black.withOpacity(0.7),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              IconlyLight.arrowLeft2,
              color: Colors.white,
              size: 25,
            )
          ],
        )
      ],
    );
  }
}
