enum {{filename.pascalCase()}}RouteEnums {
  home('home'),
  
  ;

  final String routeName;
  String getRouteName() {
    return '/{{filename.snakeCase()}}/$routeName';
  }

  const {{filename.pascalCase()}}RouteEnums(this.routeName);
}
