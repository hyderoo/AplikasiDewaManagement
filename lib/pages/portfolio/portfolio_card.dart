import 'package:cached_network_image/cached_network_image.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/core/models/portfolio_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PortfolioCard extends StatelessWidget {
  final PortfolioModel portfolio;
  const PortfolioCard({super.key, required this.portfolio});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.pushNamed('portofolio-detail', extra: portfolio);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageGallery(portfolio.images),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    portfolio.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      portfolio.category,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.pink[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    portfolio.description,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGallery(List<PortfolioImage> images) {
    final imagesToShow = images.length > 3 ? images.sublist(0, 3) : images;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: SizedBox(
        height: 200,
        child: imagesToShow.isEmpty
            ? Container(
                width: double.infinity,
                color: Colors.pink[100],
                alignment: Alignment.center,
                child: Icon(Icons.image, size: 40, color: Colors.pink[300]),
              )
            : imagesToShow.length == 1
                ? CachedNetworkImage(
                    imageUrl:
                        '${AppConsts.baseUrl}${imagesToShow[0].imagePath}',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[200],
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.pink),
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      width: double.infinity,
                      color: Colors.pink[100],
                      alignment: Alignment.center,
                      child:
                          Icon(Icons.image, size: 40, color: Colors.pink[300]),
                    ),
                  )
                : Row(
                    children: [
                      for (int i = 0; i < imagesToShow.length; i++)
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                right: i < imagesToShow.length - 1 ? 2 : 0),
                            child: CachedNetworkImage(
                              imageUrl:
                                  '${AppConsts.baseUrl}${imagesToShow[i].imagePath}',
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Container(
                                color: Colors.grey[200],
                                child: Center(
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.pink),
                                    ),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                color: Colors.pink[100],
                                alignment: Alignment.center,
                                child: Icon(Icons.image,
                                    size: 40, color: Colors.pink[300]),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
      ),
    );
  }
}
