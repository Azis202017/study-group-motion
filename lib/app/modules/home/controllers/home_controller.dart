import 'package:deep_dive_get_cli/app/data/model/post_api_model.dart';
import 'package:deep_dive_get_cli/app/data/model/story_api_model.dart';
import 'package:deep_dive_get_cli/app/services/story_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

import '../../../routes/app_pages.dart';
import '../../../services/post_service.dart';

class HomeController extends GetxController {
  bool isLoading = true;
  final storyController = StoryController();
  List<PostModel> listOfPost = [];

  List<StoryModel> storyModel = [];
  @override
  void onInit() {
    fetchAllPost();
    loadStoryModel();
    super.onInit();
  }

  void fetchAllPost() async {
    List<PostModel> data = await PostService().fetchAllList();
    listOfPost = data;
    update();
  }

  void loadStoryModel() async {
    // storyModel = [
    //   StoryModel(
    //     image: 'foto_profile',
    //     namaAkun: 'Ruffles',
    //     storyItems: [
    //       StoryItem.text(
    //         title: "I guess you'd love to see more of our food. That's great.",
    //         backgroundColor: Colors.blue,
    //       ),
    //       StoryItem.text(
    //         title: "Halo motion",
    //         backgroundColor: Colors.red,
    //       ),
    //     ],
    //     isLoginAccount: true,
    //   ),
    //   StoryModel(
    //     image: 'foto_profile',
    //     namaAkun: 'Sabanok',
    //     storyItems: [
    //       StoryItem.pageImage(
    //         url:
    //             "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
    //         caption: "Halo",
    //         controller: storyController,
    //       ),
    //     ],
    //   ),
    //   StoryModel(
    //     image: 'foto_profile',
    //     namaAkun: 'Sabanok',
    //     storyItems: [
    //       StoryItem.pageImage(
    //         url:
    //             "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
    //         caption: "Halo",
    //         controller: storyController,
    //       ),
    //     ],
    //   ),
    //   StoryModel(
    //     image: 'foto_profile',
    //     namaAkun: 'Blue_Boy',
    //     storyItems: [
    //       StoryItem.pageImage(
    //         url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
    //         caption: "Still sampling",
    //         controller: storyController,
    //       ),
    //     ],
    //   ),
    // ];
    storyModel = await StoryService().fetchAllListOfStory();
    isLoading = false;

    update();
  }

  void changeIconLike() {
    // postModel.isLike = !postModel.isLike;
    // if (postModel.isLike) {
    //   postModel.jumlahLike++;
    // } else {
    //   postModel.jumlahLike--;
    // }
    // update();
  }

  void toStoryPageView(StoryModel model) {
    Get.toNamed(Routes.SNAP_GRAM, arguments: {
      'story': model,
    });
  }
}
