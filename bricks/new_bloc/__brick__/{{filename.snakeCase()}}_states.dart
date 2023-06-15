abstract class {{filename.pascalCase()}}States {}

class {{filename.pascalCase()}}Loading extends {{filename.pascalCase()}}States {}

class {{filename.pascalCase()}}Loaded extends {{filename.pascalCase()}}States {
 
}

class {{filename.pascalCase()}}Failed extends {{filename.pascalCase()}}States {
  final String text;
  {{filename.pascalCase()}}Failed(this.text);
}
