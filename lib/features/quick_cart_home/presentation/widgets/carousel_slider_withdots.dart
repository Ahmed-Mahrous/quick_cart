import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit.dart';

class CarouselSliderWithDots extends StatefulWidget {
  CarouselSliderWithDots({super.key});
  final List<Widget> items = [
    Builder(builder: (context) {
      return Container(
        height: context.height * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage('assets/images/black_friday.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }),
    Builder(builder: (context) {
      return Container(
        height: context.height * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage('assets/images/offer.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }),
  ];
  @override
  State<CarouselSliderWithDots> createState() => _CarouselSliderWithDotsState();
}

class _CarouselSliderWithDotsState extends State<CarouselSliderWithDots> {
  late CarouselController controller;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeCubitStates>(
      builder: (context, state) {
        return Column(
          children: [
            CarouselSlider(
                items: widget.items,
                options: CarouselOptions(
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    height: context.height * 0.18,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      context.read<HomeCubit>().setCarouselChange(index);
                    })),
            DotsIndicator(
              dotsCount: widget.items.length,
              position: currentIndex,
              onTap: (index) {
                controller.animateToPage(index);
              },
              decorator: DotsDecorator(
                  color: AppColors.secondary,
                  activeColor: AppColors.primary,
                  size: const Size.square(10),
                  activeSize: const Size(20, 10),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            )
          ],
        );
      },
    );
  }
}
