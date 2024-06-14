import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/image_widget/cached_image_widget.dart';
import '../../domain/entities/article_entity.dart';

class ArticleTileWidget extends StatelessWidget {
  final ArticleEntity? article;
  final bool? isRemovable;
  final void Function(ArticleEntity article)? onRemove;
  final void Function(ArticleEntity article)? onArticlePressed;

  const ArticleTileWidget({
    super.key,
    this.article,
    this.onArticlePressed,
    this.isRemovable = false,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
            start: 14, end: 14, bottom: 7, top: 7),
        height: MediaQuery.of(context).size.width / 2.2,
        child: Row(
          children: [
            _buildImage(context),
            Expanded(child: _buildTitleWithDescription()),
            _buildRemovableArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return CachedImageWidget(
      imageUrl: article!.urlToImage,
      width: MediaQuery.of(context).size.width / 3,
    );
  }

  Widget _buildTitleWithDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            article!.title ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: 'Butler',
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Colors.black87,
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              article!.description ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Datetime
          Row(
            children: [
              const Icon(Icons.timeline_outlined, size: 16),
              const SizedBox(width: 4),
              Text(
                article!.publishedAt!,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRemovableArea() {
    if (isRemovable!) {
      return GestureDetector(
        onTap: _onRemove,
        child: const SizedBox(
          width: 24,
          height: 24,
          child: Icon(Icons.remove_circle_outline, color: Colors.red),
        ),
      );
    }
    return Container();
  }

  void _onTap() {
    if (onArticlePressed != null) {
      onArticlePressed!(article!);
    }
  }

  void _onRemove() {
    if (onRemove != null) {
      onRemove!(article!);
    }
  }
}
