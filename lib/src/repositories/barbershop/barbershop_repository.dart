import 'package:dw_barbershop/src/core/exception/repository_exception.dart';
import 'package:dw_barbershop/src/model/barbershop_model.dart';
import '../../core/fp/either.dart';
import '../../model/user_model.dart';

abstract interface class BarbershopRepository {
  Future<Either<RepositoryException, BarbershopModel>> getMyBarbershop(
      UserModel userModel);
}
