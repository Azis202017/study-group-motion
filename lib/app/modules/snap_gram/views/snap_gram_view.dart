import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

import '../controllers/snap_gram_controller.dart';

class SnapGramView extends GetView<SnapGramController> {
  const SnapGramView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnapGramView'),
        centerTitle: true,
      ),
      body: StoryView(
        controller: controller.storyController,
        storyItems: [
          StoryItem.pageImage(
            url: controller.listOfStory.story.isNotEmpty
                ? controller.listOfStory.story[0].fotoUrl
                : "https://media.tenor.com/dB546Q27rIQAAAAM/cz5-cz4.gif",
            controller: controller.storyController,
          )
        ],
        onComplete: controller.snapGramComplete,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => print(controller.listOfStory.story.length)),
    );
  }
}
