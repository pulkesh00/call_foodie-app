import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class IntroScreenController extends GetxController {
  final box = GetStorage();
  final isIntro = true.obs;

  @override
  void onInit() {
    super.onInit();
    oneTimeView();
  }

  oneTimeView() async {
    if (box.read('intro') == true) {
      await box.write('intro', false);
      isIntro.value = false;
    } else {
      isIntro.value = false;
    }
  }
}
