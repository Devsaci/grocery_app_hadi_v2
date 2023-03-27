import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

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
            return Image.asset('assets/images/landing/buy-on-laptop.jpg');
          },
          itemCount: 3,
        ),
      ],
    );
  }
}
