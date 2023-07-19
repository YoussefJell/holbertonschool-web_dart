void outer(String name, String id) {
  String inner() {
    var split = name.split(" ");
    var alias = split[1].substring(0, 1) + "." + split[0];
    return "Hello Agent ${alias} your id is $id";
  }

  print(inner());
}
