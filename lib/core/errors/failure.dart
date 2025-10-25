class Failure {
  final String errormsg;

  Failure({required this.errormsg});
}

class FriebaseFailure extends Failure {
  FriebaseFailure({required super.errormsg});
}


class ApiFailure extends Failure {
  ApiFailure({required super.errormsg});
}


