import 'package:get/get.dart';
import '../../model/project_model.dart';

class ProjectController  extends GetxController{
  final RxList<bool> hovers = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    hovers.assignAll(List<bool>.filled(projectList.length, false));
  }

  void onHover(int index,bool value){
    if (index >= 0 && index < hovers.length) {
      hovers[index]=value;
    }
  }
}
