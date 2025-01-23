import 'package:chat_eela/src/features/login/page/login_page.dart';
import 'package:chat_eela/src/features/login/page/onboarding_page.dart';
import 'package:chat_eela/src/features/login/page/sign_up_page.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  //constructor privado
  AppNavigator._(); //esto hace que no sea una clase que se pueda instanciar
  //creamos rutas

  // ruta principal de mi aplicacion
  static const routeMainPage = Navigator.defaultRouteName;
  static const routeLoginIn = '/login';
  static const routeSignUp = '/sign-up';
  static final routes = {
    routeMainPage: (context) => const OnboardingPage(),
    routeLoginIn: (context) => const LoginPage(),
    routeSignUp: (context) => const SignUpPage(),
  };

  //metodos para navegar
  //PARA NAVEGAR AL LOGIN
  static void navigateToLogin(BuildContext context) {
    Navigator.pushNamed(
      context,
      routeLoginIn,
    );
  }

  //PARA NAVEGAR AL REGISTRO
  static void navigateToSignUp(BuildContext context) {
    Navigator.pushNamed(
      context,
      routeSignUp,
    );
  }
}
