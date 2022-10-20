import 'message.dart';

vaildInput(String val, int min, int max) {
  if (val.length > max) {
    return messageMax;
  }
  if (val.length < min) {
    return messageMin;
  }
  if (val.isEmpty) {
    return messageEmpty;
  }
}
