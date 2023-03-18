import 'package:demo1/app/data/dummy_task_model.dart';
import 'package:demo1/remote_config.dart';
import 'package:get/get.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
enum RequestStatus {LOADING, SUCESS, ERROR}
class AllOffersController extends GetxController {
  //TODO: Implement AllOffersController
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchConfig();
  }

  bool isSuccess =false;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  List<DummyTask> dataList = [];
  Future<void> fetchConfig() async {
    isSuccess = true;
   dataList =await RemoteConfigService.init();
   update();
   isSuccess = false;
  }

  void increment() => count.value++;
}
