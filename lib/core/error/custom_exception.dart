
class CustomException implements Exception{
  final String error;

  CustomException({required this.error});
@override
  String toString() {
    return error;
  }
 
}
