import 'package:flutter/material.dart';

class ImageFallbackWidget extends StatelessWidget {
  final double width;

  const ImageFallbackWidget({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          width: width,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.08),
          ),
          child: const Icon(Icons.error, color: Colors.grey),
        ),
      ),
    );
  }
}
