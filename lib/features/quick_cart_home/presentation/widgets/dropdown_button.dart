import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_states.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  List<int> list = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeCubitStates>(
      builder: (context, state) {
        return DropdownButton<int>(
          value: context.read<HomeCubit>().dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          elevation: 16,
          style: TextStyle(
              color: AppColors.mainTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 18),
          underline: Container(
            height: 2,
            color: AppColors.primary,
          ),
          onChanged: (int? value) {
            // This is called when the user selects an item.
            context.read<HomeCubit>().dropdownChange(value);
            print(context.read<HomeCubit>().dropdownValue);
          },
          items: list.map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text('$value'),
            );
          }).toList(),
        );
      },
    );
  }
}
