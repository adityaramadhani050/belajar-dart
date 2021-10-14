import 'dart:io';

void listOfName() {
  var names;
  print("Sebutkan ${names.length} nama idola kamu");
  for (var i = 1; i <= names.length; i++) {
    stdout.write("$i. ");
    names[i - 1] = stdin.readLineSync();
  }
  print(names);
}

main() {
  listOfName();
}
