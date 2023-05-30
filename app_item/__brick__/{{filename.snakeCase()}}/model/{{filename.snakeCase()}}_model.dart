class {{filename.pascalCase()}}Model {
  late int id;
  

  {{filename.pascalCase()}}Model(
    this.id,
  
  );

  factory {{filename.pascalCase()}}Model.fromJson(
    Map<String, dynamic> json,
  ) =>
      {{filename.pascalCase()}}Model(
        json["id"] ?? "",
       
      );
}

class {{filename.pascalCase()}}ListModel {
  late List<{{filename.pascalCase()}}Model> matches;
  {{filename.pascalCase()}}ListModel(this.matches);

  factory {{filename.pascalCase()}}ListModel.fromJson(
    List<dynamic> json,
  ) =>
      {{filename.pascalCase()}}ListModel(
        json.map((e) => {{filename.pascalCase()}}Model.fromJson(e)).toList(),
      );
}
