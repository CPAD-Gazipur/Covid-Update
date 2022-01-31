import 'package:get/get.dart';
import 'package:getxapi/app/modules/post/providers/post_provider.dart';

class PostController extends GetxController with StateMixin<dynamic> {
  //TODO: Implement PostController

  @override
  void onInit() {
    super.onInit();
    PostProvider().getPost().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}
