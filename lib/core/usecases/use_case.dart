import 'package:bookly/core/errors/failure.dart';
import 'package:either_dart/either.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failrue, Type>> call([Param param]);
}
class NoParam {}

