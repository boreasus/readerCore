import 'package:get/state_manager.dart';
import 'package:new_project/core/model/News.dart';
import 'package:new_project/core/services/Services.dart';
import '../constant.dart';

class HomePageController extends GetxController {
  final Rx<AppState> _connectionState = AppState.initial.obs;
  Rx<AppState> get connectionState => _connectionState;

  final RxString _searchController = "".obs;
  RxString get searchController => _searchController;
  void setSearchController(value) {
    _searchController.value = value;
  }

  final _articles = RxList<Articles>();
  RxList<Articles> get articles => _articles;

  @override
  void onInit() async {
    super.onInit();
    _connectionState.value = AppState.loading;
    try {
      _articles.value = await Services().newsApi() ?? [];
      _connectionState.value = AppState.loaded;
    } catch (e) {
      _connectionState.value = AppState.error;
    }
  }
}
