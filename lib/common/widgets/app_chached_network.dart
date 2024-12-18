import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final String imgUrl;
  final Color color;
  final double? width;
  const AppCachedNetworkImage(
      {super.key, required this.imgUrl, this.color = Colors.white, this.width});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      width: width,
      placeholder: (context, url) => FancyShimmerImage(
        imageUrl: imgUrl,
        shimmerBaseColor: AppColors.cardColor,
        shimmerHighlightColor: AppColors.primaryBlue,
        shimmerBackColor: AppColors.primaryBlue,
      ),
      errorWidget: (context, url, error) {
        return Container(
          color: Colors.grey[200],
          child: const Center(
            child: Icon(Icons.error_outline),
          ),
        );
      },
      fit: BoxFit.cover,
      colorBlendMode: BlendMode.difference,
    );
  }
}
