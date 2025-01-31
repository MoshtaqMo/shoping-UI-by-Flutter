
import 'package:get/get.dart';
import 'package:shoping/core/middleware/middleware.dart';
import 'package:shoping/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:shoping/view/screen/auth/language.dart';
import 'package:shoping/view/screen/auth/login.dart';
import 'package:shoping/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:shoping/view/screen/auth/signup.dart';
import 'package:shoping/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:shoping/view/screen/auth/success_siginup.dart';
import 'package:shoping/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:shoping/view/screen/auth/verifycodesignup.dart';
import 'package:shoping/view/screen/onboarding.dart';

import 'core/constans/routes.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: "/", page: () => const Language(), middlewares: [
    MiddleWares(),
  ]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgotPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSiginup()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetpassword()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: () => const VerifyCodeSiginUp()),

];

