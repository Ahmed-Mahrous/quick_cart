import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LangCubit extends Cubit<Locale> {
  LangCubit() : super(const Locale('en'));

  void setLocale(Locale locale) {
    emit(locale);
  }
}
