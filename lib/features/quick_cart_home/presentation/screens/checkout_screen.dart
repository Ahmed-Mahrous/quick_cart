import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/location_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/pay_form.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool isCashClicked = false;
  bool isCardClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: context.width,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcons.quickCart,
            const SizedBox(
              width: 8,
            ),
            const Text(
              'QuickCart',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      context.read<LocationCubit>().getCurrentLocation();
                    },
                    icon: const Icon(
                      Icons.location_on_rounded,
                      size: 40,
                    )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: BlocBuilder<LocationCubit, LocationState>(
                    builder: (context, state) {
                      if (state is LocationLoading) {
                        return SizedBox(
                          height: 50,
                          child: TextField(
                            controller: TextEditingController(
                                text: 'Press icon for current location'),
                            readOnly: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address',
                            ),
                          ),
                        );
                      } else if (state is LocationLoaded) {
                        return SizedBox(
                          height: 60,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style:
                                const TextStyle(overflow: TextOverflow.visible),
                            controller:
                                TextEditingController(text: state.address),
                            readOnly: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address',
                            ),
                          ),
                        );
                      } else if (state is LocationError) {
                        return SizedBox(
                          height: 50,
                          child: TextField(
                            controller:
                                TextEditingController(text: state.message),
                            readOnly: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address',
                            ),
                          ),
                        );
                      } else {
                        return SizedBox(
                          height: 50,
                          child: TextField(
                            controller: TextEditingController(
                                text: 'Press icon for current location'),
                            readOnly: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address',
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Choose pay option',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCashClicked = !isCashClicked;
                  isCardClicked = !isCashClicked;
                  print('$isCashClicked');
                });
              },
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        'Cash',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: isCashClicked == false
                                ? Colors.grey
                                : AppColors.primary),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  isCashClicked == true
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.check_circle),
                        )
                      : Container()
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCardClicked = !isCardClicked;
                  isCashClicked = !isCardClicked;
                  print('$isCashClicked');
                });
              },
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        'By card',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: isCardClicked == false
                                ? Colors.grey
                                : AppColors.primary),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  isCardClicked == true
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.check_circle),
                        )
                      : Container()
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Card info',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            const Expanded(child: PayForm())
          ],
        ),
      ),
    );
  }
}
