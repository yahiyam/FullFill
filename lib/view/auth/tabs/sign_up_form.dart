import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fullfill_user_app/utils/colors.dart';
import 'package:fullfill_user_app/view/auth/widgets/custom_text_field.dart';
import 'package:fullfill_user_app/utils/common_button.dart';
import 'package:fullfill_user_app/view_model/auth/auth_page_tabs_provider.dart';
import 'package:fullfill_user_app/view_model/auth/image_provider.dart';
import 'package:fullfill_user_app/view_model/auth/registeration_provider.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    final tabProvider = Provider.of<AuthTabsProvider>(context);

    return SingleChildScrollView(
      child: Consumer<RegisterationProvider>(
        builder: (context, registerationProvider, _) {
          return Column(
            children: [
              SizedBox(height: screen.height / 70),
              Consumer<ImagesProvider>(
                builder: (context, imageProvider, _) => InkWell(
                  onTap: () => imageProvider.pickImage(),
                  child: CircleAvatar(
                    radius: screen.width * 0.20,
                    backgroundColor: white,
                    backgroundImage: imageProvider.imageXFile == null
                        ? null
                        : FileImage(File(imageProvider.imageXFile!.path)),
                    child: imageProvider.imageXFile == null
                        ? Icon(
                            Icons.add_photo_alternate,
                            size: screen.width * 0.20,
                            color: grey,
                          )
                        : null,
                  ),
                ),
              ),
              SizedBox(height: screen.height / 70),
              Form(
                key: registerationProvider.registrationFormKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screen.width / 10),
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: registerationProvider.nameController,
                        icon: Icons.person,
                        labelText: 'Name',
                      ),
                      SizedBox(height: screen.height / 70),
                      CustomTextField(
                        controller: registerationProvider.emailController,
                        icon: Icons.alternate_email,
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: screen.height / 70),
                      CustomTextField(
                        controller: registerationProvider.passwordController,
                        icon: Icons.password,
                        labelText: 'Password',
                        obscureText: true,
                        showSuffixIcon: true,
                      ),
                      SizedBox(height: screen.height / 70),
                      CustomTextField(
                        controller: registerationProvider.confirmPasswordController,
                        icon: Icons.password,
                        labelText: 'Confirm Password',
                        obscureText: true,
                      ),
                      SizedBox(height: screen.height / 70),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            const Text('Already have an account?'),
                            TextButton(
                              onPressed: () {
                                tabProvider.changeTab(0);
                              },
                              child: const Text(
                                'Log in',
                                style: TextStyle(
                                  color: commonColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screen.height / 70),
              CommonButton(
                title: "Sign Up",
                onTap: () {
                  registerationProvider.registrationFormValidation(context);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
