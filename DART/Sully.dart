// je suis un commentaire

import 'dart:io';

int file_number = 5;

void main() async {

    if (file_number-- <= 0)
        return ;
    final filename = "Sully_" + file_number.toString() + ".dart";
    var file = await File(filename).writeAsString(src.replaceFirst('@', file_number.toString()) + '"' * 3 + src + '"' * 3 + ';');
    // Do something with the file.
    Process.run('dart', [filename]);
}

String src = """// je suis un commentaire

import 'dart:io';

int file_number = @;

void main() async {

    if (file_number-- <= 0)
        return ;
    final filename = "Sully_" + file_number.toString() + ".dart";
    var file = await File(filename).writeAsString(src.replaceFirst('@', file_number.toString()) + '"' * 3 + src + '"' * 3 + ';');
    // Do something with the file.
    Process.run('dart', [filename]);
}

String src = """;