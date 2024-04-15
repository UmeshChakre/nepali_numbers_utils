# Numbers to Nepali Word Converter

A dart package with collection of Devnagari Utilities like Number Converter, Number to devnagari, Comma Seperator.

## Available Functions

- **convertToDevanagariAmount**
- **convertToDevanagariCommaSeparated**
- **convertToDevanagari**
- **convertToNepaliWord**

## Usage

You can directly call the functions anywhere you like:

```dart
void main(){
    convertToNepaliWord(25000);
}
```

### Functions

| Function                          |                                Result                                 |
| :-------------------------------- | :-------------------------------------------------------------------: |
| convertToDevanagariAmount         | accepts double, gives amount in Devnagari // रू is appended in result |
| convertToDevanagariCommaSeparated |    accepts double, returns number in devnagari seperated by comma     |
| convertToDevanagari               |            accepts double, returns simple devnagari number            |
| convertToNepaliWord               |              accepts double, returns words in devnagari               |

## Contribute

If you want to contribute to the package, please feel free to submit issues or PR at [Github Repo](https://github.com/UmeshChakre/nepali_numbers_utils).
