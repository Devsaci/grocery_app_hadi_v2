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
  final _formKey = GlobalKey<FormState>();
  final _passFocusNode = FocusNode();
  final _emailTextController = TextEditingController();
  final _passTextController = TextEditingController();

  var _obscureText = true;

  void _submitFormOnLogin() {
    final isValid = _formKey.currentState!.validate();
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
            color: Colors.black.withOpacity(0.8),
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
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //emailAddress
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => FocusScope.of(context)
                              .requestFocus(_passFocusNode),
                          controller: _emailTextController,
                          focusNode: _passFocusNode,
                          //obscureText: _obscureText,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'Please enter a valid email address';
                            } else {
                              return null;
                            }
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        //Password
                        const SizedBox(height: 12),
                        TextFormField(
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () => _submitFormOnLogin(),
                          controller: _passTextController,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 7) {
                              return 'Please enter a valid  Password';
                            } else {
                              return null;
                            }
                          },
                          style: const TextStyle(color: Colors.white),
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.amberAccent,
                                )),
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
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
