/// Accepts  devnagari number and returns String
///
/// rquired @param [amount]
String convertToDevanagariAmount(double amount) {
  if (amount == 0) {
    return '०'; // Return Devanagari representation of 0
  }
  String devanagari = '';
  List<String> devanagariDigits = [
    '०',
    '१',
    '२',
    '३',
    '४',
    '५',
    '६',
    '७',
    '८',
    '९'
  ];

  // Separate integer and fractional parts
  List<String> parts = amount.toString().split('.');
  int integerPart = int.parse(parts[0]);
  int fractionalPart = 0;
  if (parts.length > 1) {
    fractionalPart = int.parse(parts[1]);
  }

  // Convert integer part
  int digitCounter = 0;
  int groupCounter = 0;
  while (integerPart > 0) {
    int digit = integerPart % 10; // Extract the last digit
    devanagari = devanagariDigits[digit] +
        devanagari; // Prepend Devanagari digit to the result
    integerPart ~/= 10; // Remove the last digit
    digitCounter++;
    groupCounter++;
    // Add comma after every two digits except for the first three digits
    if (groupCounter == 2 && digitCounter > 3 && integerPart > 0) {
      devanagari = ',$devanagari';
      groupCounter = 0;
    } else if (groupCounter == 3 && integerPart > 0) {
      devanagari = ',$devanagari';
      groupCounter = 0;
    }
  }

  // Add decimal point if fractional part exists
  if (fractionalPart > 0) {
    devanagari += '.';
    // Convert fractional part
    while (fractionalPart > 0) {
      int digit = fractionalPart % 10; // Extract the last digit
      devanagari = devanagariDigits[digit] +
          devanagari; // Prepend Devanagari digit to the result
      fractionalPart ~/= 10; // Remove the last digit
    }
  }

  return "रू $devanagari";
}

/// Accepts  devnagari number and returns String
///
/// rquired @param [numberToBeConverted]
String convertToDevanagariCommaSeparated(double numberToBeConverted) {
  if (numberToBeConverted == 0) {
    return '०'; // Return Devanagari representation of 0
  }
  String devanagari = '';
  List<String> devanagariDigits = [
    '०',
    '१',
    '२',
    '३',
    '४',
    '५',
    '६',
    '७',
    '८',
    '९'
  ];

  // Separate integer and fractional parts
  List<String> parts = numberToBeConverted.toString().split('.');
  int integerPart = int.parse(parts[0]);
  int fractionalPart = 0;
  if (parts.length > 1) {
    fractionalPart = int.parse(parts[1]);
  }

  // Convert integer part
  int digitCounter = 0;
  int groupCounter = 0;
  while (integerPart > 0) {
    int digit = integerPart % 10; // Extract the last digit
    devanagari = devanagariDigits[digit] +
        devanagari; // Prepend Devanagari digit to the result
    integerPart ~/= 10; // Remove the last digit
    digitCounter++;
    groupCounter++;
    // Add comma after every two digits except for the first three digits
    if (groupCounter == 2 && digitCounter > 3 && integerPart > 0) {
      devanagari = ',$devanagari';
      groupCounter = 0;
    } else if (groupCounter == 3 && integerPart > 0) {
      devanagari = ',$devanagari';
      groupCounter = 0;
    }
  }

  // Add decimal point if fractional part exists
  if (fractionalPart > 0) {
    devanagari += '.';
    // Convert fractional part
    while (fractionalPart > 0) {
      int digit = fractionalPart % 10; // Extract the last digit
      devanagari = devanagariDigits[digit] +
          devanagari; // Prepend Devanagari digit to the result
      fractionalPart ~/= 10; // Remove the last digit
    }
  }

  return devanagari;
}

/// Accepts  devnagari number and returns String
///
/// rquired @param [numberToBeConverted]
String convertToDevanagari(double numberToBeConverted) {
  if (numberToBeConverted == 0) {
    return '०'; // Return Devanagari representation of 0
  }
  String devanagari = '';
  List<String> devanagariDigits = [
    '०',
    '१',
    '२',
    '३',
    '४',
    '५',
    '६',
    '७',
    '८',
    '९'
  ];

  // Separate integer and fractional parts
  List<String> parts = numberToBeConverted.toString().split('.');
  int integerPart = int.parse(parts[0]);
  int fractionalPart = 0;
  if (parts.length > 1) {
    fractionalPart = int.parse(parts[1]);
  }

  // Convert integer part
  while (integerPart > 0) {
    int digit = integerPart % 10; // Extract the last digit
    devanagari = devanagariDigits[digit] +
        devanagari; // Prepend Devanagari digit to the result
    integerPart ~/= 10; // Remove the last digit
  }

  // Add decimal point if fractional part exists
  if (fractionalPart > 0) {
    devanagari += '.';
    // Convert fractional part
    while (fractionalPart > 0) {
      int digit = fractionalPart % 10; // Extract the last digit
      devanagari = devanagariDigits[digit] +
          devanagari; // Prepend Devanagari digit to the result
      fractionalPart ~/= 10; // Remove the last digit
    }
  }

  return devanagari;
}

/// Accepts double number and converts in to Nepali String
///
/// required  @param [numberToBeConverted]
String convertToNepaliWord(double numberToBeConverted) {
  String nepaliValueWord = "";

  if (numberToBeConverted == 0) {
    return "जिरो";
  }

  if (numberToBeConverted < 0) {
    nepaliValueWord = "माइनस ${convertToNepaliWord(numberToBeConverted.abs())}";
  }

  int tempNumber = 0;

  double number = 100000000000000000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} शंख ";
    numberToBeConverted %= number;
  }

  number = 1000000000000000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} पद्म ";
    numberToBeConverted %= number;
  }

  number = 10000000000000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} नील ";
    numberToBeConverted %= number;
  }

  number = 100000000000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} खर्ब ";
    numberToBeConverted %= number;
  }

  number = 1000000000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += " ${numbersInNepali[tempNumber]} अर्ब ";
    numberToBeConverted %= number;
  }

  number = 10000000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} करोड ";
    numberToBeConverted %= number;
  }

  number = 100000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} लाख ";
    numberToBeConverted %= number;
  }

  number = 1000;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} हजार ";
    numberToBeConverted %= number;
  }

  number = 100;
  if ((numberToBeConverted / number).floor() > 0) {
    tempNumber = (numberToBeConverted / number).floor();
    nepaliValueWord += "${numbersInNepali[tempNumber]} सय ";
    numberToBeConverted %= number;
  }

  if (numberToBeConverted > 0 && numberToBeConverted < 100) {
    nepaliValueWord += " ${numbersInNepali[numberToBeConverted.floor()]}";
  }

  return nepaliValueWord;
}

/// Nepali Numbers List
const List<String> numbersInNepali = [
  "",
  "एक",
  "दुई",
  "तीन",
  "चार",
  "पाँच",
  "छ",
  "सात",
  "आठ",
  "नौँ",
  "दश",
  "एघार",
  "बाह्र",
  "तेह्र",
  "चौध",
  "पन्ध्र",
  "शोह्र",
  "सत्र",
  "अठार",
  "उन्नाइस",
  "बीस",
  "एकाइस",
  "बाइस",
  "तेइस",
  "चौबीस",
  "पचीस",
  "छबीस",
  "सत्ताइस",
  "अठाइस",
  "उन्नतीस",
  "तीस",
  "एकतीस",
  "बतीस",
  "तेइतीस",
  "चौतीस",
  "पैँतीस",
  "छतीस",
  "सैँतीस",
  "अठसैँतीस",
  "उन्नचालीस",
  "चालीस",
  "एकचालीस",
  "बैयालीस",
  "तीर्‍चालीस",
  "चौवालीस",
  "पैँतालीस",
  "छैयालीस",
  "सडचालीस",
  "अडचालीस",
  "उन्नपचास",
  "पचास",
  "एकौन्न",
  "बाउन्न",
  "तिर्‍पन्न",
  "चौवन्न",
  "पचपन्न",
  "छपन्न",
  "सन्तौन्न",
  "आन्ठौन्न",
  "उन्नसाठी",
  "साठी",
  "एकसाठी",
  "बैसाठी",
  "तीर्‍साठी",
  "चौवसाठी",
  "पैँसाठी",
  "छैसाठी",
  "सडसाठी",
  "अडसाठी",
  "उन्नसतरी",
  "सतरी",
  "एक्तर",
  "बहतर",
  "तिर्‍हतर",
  "चौहतर",
  "पच्चतर",
  "छहतर",
  "सत्त्ततर",
  "अठत्त्ततर",
  "उन्नाअशी",
  "अशी",
  "एकाशी",
  "बैयाशी",
  "तीर्याशी",
  "चौवाशी",
  "पचाशी",
  "छैयाशी",
  "सडाशी",
  "अडाशी",
  "उन्ननबे",
  "नब्बे",
  "एकानबे",
  "बैयानबे",
  "तिर्यानबे",
  "चौवानबे",
  "पन्चानबे",
  "चयानबे",
  "सन्तानबे",
  "अन्ठानबे",
  "उन्नसय",
  "सय"
];
