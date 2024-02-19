import 'package:deep_dive_get_cli/app/data/model/post_api_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget {
  final PostModel postModel;
  final void Function()? onPressed;
  const Post({
    super.key,
    required this.postModel,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  36,
                ),
                child: SizedBox(
                  width: 36,
                  height: 36,
                  child: Image.network(
                    postModel.fotoUrl,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postModel.user.name.isEmpty ? "" : postModel.user.name,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  postModel.isSponsor == 1
                      ? Text(
                          "Sponsored",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Image.network(
          postModel.fotoUrl,
          width: double.infinity,
          height: 390,
        ),
        const SizedBox(
          height: 9.25,
        ),
        Row(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                postModel.isLike == 1 ? Icons.favorite : Icons.favorite_border,
              ),
            ),
            const Icon(
              Icons.comment,
            ),
            const Icon(
              Icons.share,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '0 Likes',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            ' ${postModel.user.name} ${postModel.description}',
          ),
        ),
      ],
    );
  }
}
