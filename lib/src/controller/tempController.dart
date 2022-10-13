import 'package:get/state_manager.dart';
import 'package:new_project/core/services/Services.dart';
import 'package:new_project/core/utilities/constant.dart';
import 'package:new_project/src/model/News.dart';

class tempController extends GetxController {
  final Rx<RequestState> _connectionState = RequestState.initial.obs;
  Rx<RequestState> get connectionState => _connectionState;

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
    _connectionState.value = RequestState.loading;
    try {
      _articles.value = await Services().newsApi() ?? [];
      _connectionState.value = RequestState.loaded;
    } catch (e) {
      _connectionState.value = RequestState.error;
    }
  }
}
