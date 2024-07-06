import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/lang_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/lang/lang.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<LangCubit, Locale>(
        builder: (context, locale) {
          return Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.language),
                  TextButton(
                    onPressed: () {
                      // Toggle language for demonstration
                      context.read<LangCubit>().setLocale(
                          context.read<LangCubit>().state.languageCode == 'en'
                              ? const Locale('de')
                              : const Locale('en'));
                    },
                    child: Text(
                      AppLocalizations.of(context)?.translate('lang') ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(Icons.info_outline),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)?.translate('about us') ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
