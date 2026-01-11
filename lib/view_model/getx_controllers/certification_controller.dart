import 'package:get/get.dart';
import '../../model/certificate_model.dart';

class CertificationController extends GetxController{
  final RxList<bool> hovers=<bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    hovers.assignAll(List<bool>.filled(certificateList.length, false));
  }

  void onHover(int index,bool value){
    if (index >= 0 && index < hovers.length) {
      hovers[index]=value;
    }
  }
}
