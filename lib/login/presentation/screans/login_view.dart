import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kafiil/core/assets_manager.dart';
import 'package:kafiil/core/color_manger.dart';
import 'package:kafiil/core/routes_manager.dart';
import 'package:kafiil/core/string_manager.dart';

import '../components/button_component.dart';
import '../components/text_form_component.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberBou = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.loginTitle,
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.left,
                ),
                Center(
                    child: SvgPicture.asset(
                  ImageAssets.login,
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                )),
                TextFormComponent(
                  title: AppString.emailAddress,
                  textEditingController: emailController,
                ),
                TextFormComponent(
                  title: AppString.password,
                  hide: true,
                  textEditingController: passwordController,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: CheckboxListTile(
                        activeColor: ColorManager.primary_900,
                        title: const Text("Remember Me"),
                        value: rememberBou,
                        onChanged: (newValue) {
                          setState(() => rememberBou = newValue!);
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    const Text('Forgot Password?')
                  ],
                ),
                SizedBox(height: 30),
                ButtonComponent(
                  title: AppString.login,
                  function: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account ? ',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .restorablePushNamed(Routes.registerRoute);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: ColorManager.primary_900),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
