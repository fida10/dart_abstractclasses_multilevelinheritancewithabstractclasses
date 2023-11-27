/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/abstractclasses_multilevelinheritancewithabstractclasses_base.dart';

/*
Practice Question 3: Multi-Level Inheritance with Abstract Classes

Question:

Create an abstract class DataProcessor with an 
abstract method processData(String data).

Create another abstract class EncryptingDataProcessor 
that extends DataProcessor and adds an abstract method encryptData(String data).

Implement a concrete class AESDataProcessor that extends 
EncryptingDataProcessor. Implement both processData and encryptData methods 
(returning mock processed/encrypted data).
 */

abstract class DataProcessor {
  String processData(String data);
}

abstract class EncryptingDataProcessor extends DataProcessor {
  String encryptData(String data);
}

class AESDataProcessor extends EncryptingDataProcessor {
  @override
  String processData(String data) {
    return "processed: $data";
  }

  @override
  String encryptData(String data) {
    return "encrypted: $data";
  }
}
