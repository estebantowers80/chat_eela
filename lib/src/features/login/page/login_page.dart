import 'package:chat_eela/src/core/ui/ui.dart';
import 'package:chat_eela/src/features/login/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Log in',
              style: textTheme.labelLarge?.copyWith(
                decoration: TextDecoration.underline,
                decorationThickness: 10,
                decorationColor: theme.colorScheme.primary.withOpacity(0.7),
              ),
              children: [
                TextSpan(
                  text: ' to Chateo',
                  style: textTheme.labelLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Welcome back! Sign in using your social account or email to continue us',
            style: TextStyle(
              color: AppColors.darkGrey,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaButton(
                  iconPath: AppDrawables.facebookIconDrawable,
                ),
                const SizedBox(
                  width: 16,
                ),
                SocialMediaButton(
                  iconPath: AppDrawables.googleIconDrawable,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 16,
                ),
                SocialMediaButton(
                  iconPath: AppDrawables.appleIconDrawable,
                ),
              ],
            ),
          ),
          OnboardingDivider(
            color: AppColors.darkGrey,
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              label: Text('Your email'),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            enabled: true,
            textInputAction: TextInputAction.done,
            obscureText: true,
            decoration: const InputDecoration(
              label: Text('Password'),
            ),
          ),
          // const SizedBox(height: 92),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
            bottom: 20 + keyboardHeight,
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Log in'),
          ),
        ),
      ),
    );
  }
}
