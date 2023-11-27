import 'package:abstractclasses_multilevelinheritancewithabstractclasses/abstractclasses_multilevelinheritancewithabstractclasses.dart';
import 'package:test/test.dart';

void main() {
  test(
      'AESDataProcessor should implement methods from DataProcessor and EncryptingDataProcessor',
      () {
    var processor = AESDataProcessor();
    var data = 'test data';
    expect(processor.encryptData(data),
        contains('encrypted')); // Mocked response should contain 'encrypted'
    expect(processor.processData(data),
        contains('processed')); // Mocked response should contain 'processed'
  });
}

