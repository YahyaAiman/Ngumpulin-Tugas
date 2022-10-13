import 'dart:io';

void main(List<String> args) {
  String nama = 'yahya';
  int nilai = 80;
  double phi = 3.1415926;
  dynamic IPK = 3.6;
  bool mengulang = false;

  for (var i = 0; i <= 10; i++) {
    print("*" * i);
  }

  List tb = [170, 165, 140, 166];
  print('\n$tb');

  Map NoRumah = {'01': 'Tono', '02': 'Budi', '03': 'mamat'};
  print('\n$NoRumah');

  Set Judul = {'MTK', 'IPA', 'PKN', 'MTK', 'PJOK'};
  print('\n$Judul\n');

  if (IPK >= 3.5) {
    if (mengulang == false) {
      print("cumlaude");
    } else
      print("tidak cumlaude");
  } else
    print("tidak cumlaude");
}
