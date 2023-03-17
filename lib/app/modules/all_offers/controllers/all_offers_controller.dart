import 'package:demo1/app/data/dummy_task_model.dart';
import 'package:demo1/remote_config.dart';
import 'package:get/get.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class AllOffersController extends GetxController {
  //TODO: Implement AllOffersController
  late InfiniteScrollController controller;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    controller = InfiniteScrollController();
    fetchConfig();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    controller.dispose();
  }
  List<DummyTask> dataList = [];
  Future<void> fetchConfig() async {

   dataList =await RemoteConfigService.init();
   update();
  }

  void increment() => count.value++;
}
