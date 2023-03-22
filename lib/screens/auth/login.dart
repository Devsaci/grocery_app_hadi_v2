import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/const/Constss.dart';

import '../../widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _formKey;
  final _passFocusNode = FocusNode();

  void _submitFormOnLogin() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      print("The forme is Valide");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Swiper(
            duration: 800,
            autoplay: true,
            autoplayDelay: 6000,
            itemBuilder: (context, index) {
              return Image.asset(
                Constss.authImagesPaths[index],
                fit: BoxFit.fitHeight,
                height: 900,
              );
            },
            itemCount: Constss.authImagesPaths.length,
          ),
          Container(
            color: Colors.black87.withOpacity(0.3),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 120.0),
                  TextWidget(
                    text: 'Welcome Back',
                    color: Colors.white,
                    textSize: 25,
                    isTitle: true,
                  ),
                  const SizedBox(height: 8),
                  TextWidget(
                    text: "Sign in to continue",
                    color: Colors.white,
                    textSize: 18,
                    isTitle: false,
                  ),
                  const SizedBox(height: 30.0),
                  //emailAddress
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => FocusScope.of(context)
                              .requestFocus(_passFocusNode),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
