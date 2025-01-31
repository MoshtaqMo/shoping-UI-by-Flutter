import 'package:get/get.dart';
import 'package:shoping/controller/auth/signup_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>SignUpControllerImpl(),fenix: true);

  }
}