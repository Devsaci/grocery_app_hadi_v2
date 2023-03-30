import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/const/Constss.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

import '../../services/utils.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/RegisterScreen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Utils(context).getTheme;
    return Scaffold(
      body: Stack(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                borderRadius: BorderRadius.circular(10),
                child: Icon(
                  IconlyLight.arrowLeft2,
                  //todo ? Colors.white : Colors.black,
                  color: theme == true ? Colors.black : Colors.white,
                  size: 25,
                ),
              ),
              const SizedBox(height: 40.0),
              TextWidget(
                text: 'Welcome',
                color: Colors.white,
                textSize: 30,
                isTitle: true,
              ),
              const SizedBox(height: 8),
              TextWidget(
                text: "Sign up to continue",
                color: Colors.white,
                textSize: 18,
                isTitle: false,
              ),
              const SizedBox(height: 30.0),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
