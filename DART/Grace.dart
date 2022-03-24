// je suis un commentaire

import 'dart:io';

void main() async {
  final filename = 'Grace_kid.dart';
  var file = await File(filename).writeAsString(src + '"' * 3 + src + '"' * 3 + ';');
}

String src = """// je suis un commentaire

import 'dart:io';

void main() async {
  final filename = 'Grace_kid.dart';
  var file = await File(filename).writeAsString(src + '"' * 3 + src + '"' * 3 + ';');
}

String src = """;