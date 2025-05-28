import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:s7tk/core/api/api_consumer';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsuimer api;
  signin() async {
    emit(UserLoading());
    try {
      final response = await api.post();
      emit(UserSuccess());
    }  catch (e) {
      emit(UserFaileur(e.toString()));
    }
  }
}