import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
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
          itemBuilder: (context, index) {
            return Image.asset(Constss.authImagesPaths[index]);
          },
          autoplay: true,
          itemCount: Constss.authImagesPaths.length,
        ),
      ],
    );
  }
}
