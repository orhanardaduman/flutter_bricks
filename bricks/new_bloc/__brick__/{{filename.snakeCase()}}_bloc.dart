import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '{{filename.snakeCase()}}_events.dart';
import '{{filename.snakeCase()}}_states.dart';

class {{filename.pascalCase()}}Bloc extends Bloc<{{filename.pascalCase()}}Events, {{filename.pascalCase()}}States> {

  {{filename.pascalCase()}}Bloc() : super({{filename.pascalCase()}}Loading()) {
    on<Get{{filename.pascalCase()}}>(
      (event, emit) async {
        emit({{filename.pascalCase()}}Loading());
        try {
          
          
        } catch (e) {
          log(e.toString());
          emit({{filename.pascalCase()}}Failed("Beklenmedik bir hata ile karşılaşıldı"));
        }
      },
    );
  }
}
