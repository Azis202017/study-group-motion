import 'package:deep_dive_get_cli/app/data/model/post_api_model.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/image_story.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/post_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/story_api_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return SafeArea(
        child: controller.isLoading
            ? const Material(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        height: 97.75,
                        child: ListView.builder(
                          itemCount: controller.storyModel.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            StoryModel data = controller.storyModel[index];
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 12,
                              ),
                              child: ImageStory(
                                story: data,
                                onTap: () {
                                  controller.toStoryPageView(data);
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ListView.builder(
                        primary: false,
                        shrinkWrap:true,
                        itemCount: controller.listOfPost.length,
                        itemBuilder: (_, index) {
                          PostModel data = controller.listOfPost[index];
                          return Post(
                            postModel: data,
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
      );
    });
  }
}
