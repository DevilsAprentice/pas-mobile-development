import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pasflutter/model/team_model.dart';


class FeatController extends GetxController {
  var teams = <Team>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getTeams();
  }

  void getTeams() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = premierLeagueModelFromJson(response.body);
        teams.value = data.teams;
      } else {
        Get.snackbar("Error", "Gagal mengambil data klub");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
