import 'package:flutter_bloc/flutter_bloc.dart';

import '../network/{{filename.snakeCase()}}_network.dart';
import '{{filename.snakeCase()}}_events.dart';
import '{{filename.snakeCase()}}_states.dart';

class {{filename.pascalCase()}}Bloc extends Bloc<{{filename.pascalCase()}}Events, {{filename.pascalCase()}}States> {
  var api = {{filename.pascalCase()}}Network();

  {{filename.pascalCase()}}Bloc() : super({{filename.pascalCase()}}Loading()) {
    on<Get{{filename.pascalCase()}}>(
      (event, emit) async {
        emit({{filename.pascalCase()}}Loading());
        try {
          final response = await api.get{{filename.pascalCase()}}();
          if (response != null) {
            emit({{filename.pascalCase()}}Loaded(response));
          } else {
            emit({{filename.pascalCase()}}Failed("Beklenmedik bir hata ile karşılaşıldı"));
          }
        } catch (e) {
          emit({{filename.pascalCase()}}Failed("Beklenmedik bir hata ile karşılaşıldı"));
        }
      },
    );
  }
}
