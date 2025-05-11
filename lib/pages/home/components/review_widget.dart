import 'package:cached_network_image/cached_network_image.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/cubits/review/review_cubit.dart';
import 'package:dewa_wo_app/core/models/review_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({super.key});

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  late final ReviewCubit _reviewCubit;

  @override
  void initState() {
    super.initState();
    _reviewCubit = context.read<ReviewCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Ulasan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 220,
          child: BlocBuilder<ReviewCubit, ReviewState>(
            bloc: _reviewCubit,
            builder: (context, state) {
              if (state is ReviewLoading) {
                return _buildReviewShimmer();
              } else if (state is ReviewSuccess) {
                final reviews = state.reviews;
                if (reviews.isEmpty) {
                  return const Center(
                    child: Text('Tidak ada ulasan yang tersedia'),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: reviews.length,
                  itemBuilder: (context, index) {
                    return _buildReviewCard(reviews[index]);
                  },
                );
              } else if (state is ReviewError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                      TextButton(
                        onPressed: () => _reviewCubit.getReviews(),
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                );
              }
              return _buildReviewShimmer();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildReviewShimmer() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 300,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        );
      },
    );
  }

  Widget _buildReviewCard(ReviewModel review) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 2),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildAvatar(review),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          review.userName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            _buildRatingStars(review.rating),
                            const SizedBox(width: 4),
                            Text(
                              review.rating.toString(),
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Text(
                  review.review,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.4,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Diulas pada: ${DateFormat('dd MMMM yyyy', 'id').format(DateTime.tryParse(review.createdAt) ?? DateTime.now())}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar(ReviewModel review) {
    // If avatar is available, use it
    if (review.avatar != null && review.avatar!.isNotEmpty) {
      return CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[200],
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: '${AppConsts.baseUrl}${review.avatar}',
            fit: BoxFit.cover,
            width: 40,
            height: 40,
            placeholder: (context, url) => Container(
              color: Colors.grey[200],
              child: const Center(
                child: SizedBox(
                  width: 15,
                  height: 15,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                  ),
                ),
              ),
            ),
            errorWidget: (context, url, error) => _buildInitialAvatar(review),
          ),
        ),
      );
    } else {
      // If no avatar, use initials
      return _buildInitialAvatar(review);
    }
  }

  Widget _buildInitialAvatar(ReviewModel review) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.pink[100],
      child: Text(
        review.userName.isNotEmpty ? review.userName.substring(0, 1) : '?',
        style: const TextStyle(
          color: Colors.pink,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildRatingStars(double rating) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          // Full star
          return const Icon(
            Icons.star,
            color: Colors.amber,
            size: 16,
          );
        } else if (index == rating.floor() && rating % 1 > 0) {
          // Half star
          return const Icon(
            Icons.star_half,
            color: Colors.amber,
            size: 16,
          );
        } else {
          // Empty star
          return const Icon(
            Icons.star_border,
            color: Colors.amber,
            size: 16,
          );
        }
      }),
    );
  }
}
