import 'package:flutter/material.dart';

import 'package:babysitterapp/core/components/dynamic_form.dart';
import 'package:babysitterapp/core/constants/styles.dart';
import 'package:babysitterapp/core/helper/goto_page.dart';

import 'package:babysitterapp/models/inputfield.dart';

import 'account_check.dart';

import 'package:babysitterapp/views/register/view.dart';
import 'package:babysitterapp/views/home/bottom_navbar.dart';


class LoginForm extends StatelessWidget with GlobalStyles {
  LoginForm({super.key});

  final List<InputFieldConfig> loginFields = <InputFieldConfig>[
    InputFieldConfig(
      label: 'Email',
      type: 'email',
      hintText: 'Enter your email address',
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Icons.mail,
      textInputAction: TextInputAction.next,
    ),
    InputFieldConfig(
      label: 'Password',
      type: 'password',
      hintText: 'Enter your password',
      obscureText: true,
      prefixIcon: Icons.lock,
      cursorColor: GlobalStyles.primaryButtonColor,
    ),
  ];

  void _handleSubmit(BuildContext context, Map<String, String> formData) {
    final String email = formData['Email'] ?? '';
    final String password = formData['Password'] ?? '';

    final String message = 'Email: $email\nPassword: $password';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DynamicForm(
          fields: loginFields,
          onSubmit: (Map<String, String> formData) {
            _handleSubmit(context, formData);
            goToPage(context, const BottomNavbarView(), 'rightToLeftWithFade');
          },
        ),
        const SizedBox(height: GlobalStyles.defaultPadding),
        AlreadyHaveAnAccountCheck(
          press: () {
            goToPage(context, RegisterView(), 'rightToLeftWithFade');
          },
        ),
      ],
    );
  }
}
