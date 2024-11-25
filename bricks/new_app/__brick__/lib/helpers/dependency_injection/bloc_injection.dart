import 'package:provider/single_child_widget.dart';

class BlocInjection {
  List<SingleChildWidget> blocs = [
    /* TODO: add provider BlocProvider(
      create: (_) => Bloc(),
    ),*/
  ];
  List<SingleChildWidget> getBlocs() {
    return blocs;
  }
}
