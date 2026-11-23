import 'package:get/get.dart';
import 'package:pasflutter/model/makanan_model.dart';


class HomeController extends GetxController {
  var listMakanan = <MakananModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadMakanan();
  }

  void loadMakanan() {
    listMakanan.value = MakananModel.getDummyData();
  }
}
