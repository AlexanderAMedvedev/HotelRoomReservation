import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class PageViewWithDots<T> extends StatefulWidget {
  const PageViewWithDots({super.key, required this.aboutTForIndex});
  final T aboutTForIndex;

  @override
  State<PageViewWithDots> createState() => _PageViewWithDotsState();
}

class _PageViewWithDotsState extends State<PageViewWithDots> {
  var currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          height: size.width * 2 / 3,
          child: PageView.builder(
              onPageChanged: (page) =>
                  setState(() => currentPageIndex = page),
              itemCount: widget.aboutTForIndex.imageUrls.length,
              itemBuilder: (context, i) {
                return CachedNetworkImage(
                  imageUrl: widget.aboutTForIndex.imageUrls[i],
                  imageBuilder: (_, imageProvider) =>
                      Image(image: imageProvider, fit: BoxFit.fill),
                  errorWidget: (_, url, __) => Center(
                      child: Text('Ошибка при обращении к $url')),
                );
              }),
        ),
      ),
      if (widget.aboutTForIndex.imageUrls.length > 0)
        Positioned(
          left: size.width / 2,
          top: size.width * 2 / 3.2,
          child: DotsIndicator(
            dotsCount: widget.aboutTForIndex.imageUrls.length,
            position: currentPageIndex,
            decorator: const DotsDecorator(
                color: Colors.black38,
                activeColor: Colors.black,
                spacing: EdgeInsets.all(2.0)),
          ),
        )
      else
        const Center(child: Text('Пока картинок нет в базе')),
    ]);
  }
}
