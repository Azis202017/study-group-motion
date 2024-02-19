import 'package:deep_dive_get_cli/app/data/model/story_api_model.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

class SnapGramController extends GetxController {
  final storyController = StoryController();
  StoryModel listOfStory = Get.arguments['story'];
  @override
  void onInit() {
    super.onInit();
  }
  void snapGramComplete() {
    Get.back();
  }
}
