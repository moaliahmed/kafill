import 'package:flutter/material.dart';
import '../../../core/color_manger.dart';
import '../../../core/string_manager.dart';
import '../components/button_component.dart';
import '../components/text_form_component.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  int userType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text(
                  AppString.register,
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [ Row(
                        children: [
                          const Spacer(flex: 3),
                          Text(
                            AppString.register,
                            style: TextStyle(color: ColorManager.primary_900),
                          ),
                          const Spacer(flex: 2),
                          Text(
                            AppString.completeData,
                            style: TextStyle(color: ColorManager.grey_200),
                          ),
                          const Spacer(flex: 3)
                        ],
                      ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                  color: ColorManager.primary_900, thickness: 2),
                            ),
                            Container(
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(999),
                                border: Border.all(
                                    color: ColorManager.primary_900, width: 2),
                              ),
                              child: const Center(child: Text('1')),
                            ),
                            Expanded(
                              child: Divider(
                                color: ColorManager.grey_200,
                                thickness: 2,
                              ),
                            ),
                            Container(
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(999),
                                  border: Border.all(
                                    color: ColorManager.grey_200,
                                    width: 2,
                                  ),
                                  color: ColorManager.grey_200),
                            ),
                            Expanded(
                              child: Divider(color: ColorManager.grey_200),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .42,
                      child: TextFormComponent(
                          title: AppString.firstName,
                          textEditingController: firstNameController),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .42,
                      child: TextFormComponent(
                          title: AppString.lastName,
                          textEditingController: lastNameController),
                    ),
                  ],
                ),
                TextFormComponent(
                  title: AppString.emailAddress,
                  textEditingController: emailController,
                ),
                TextFormComponent(
                  title: AppString.password,
                  hide: true,
                  textEditingController: passwordController,
                ),
                TextFormComponent(
                  title: AppString.confirmRegister,
                  hide: true,
                  textEditingController: confirmPasswordController,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  AppString.userType,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: userType,
                              onChanged: (value) {
                                setState(() => userType = value!);
                              },
                            ),
                            const Text(AppString.seller)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: userType,
                              onChanged: (value) {
                                setState(() => userType = value!);
                              },
                            ),
                            const Text(AppString.buyer),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: userType,
                              onChanged: (value) {
                                setState(() => userType = value!);
                              },
                            ),
                            const Text(AppString.both),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonComponent(
                      width: MediaQuery.of(context).size.width * .3,
                      title: AppString.next,
                      function: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
