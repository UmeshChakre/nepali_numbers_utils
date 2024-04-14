import 'package:numbers_to_nepali_word_converter/numbers_to_nepali_word_converter.dart';

void main() {
  var awesome = convertToNepaliWord(123123123);
  var number = convertToDevanagari(123123123);
  var commaSeparated = convertToDevanagariCommaSeparated(123123123);
  var commaSeparatedAmount = convertToDevanagariAmount(123123123);

  print('awesome: $awesome');
  print('number: $number');
  print('Comma Separated: $commaSeparated');
  print('Devnagari amount: $commaSeparatedAmount');
}
