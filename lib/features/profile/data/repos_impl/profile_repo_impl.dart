import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/api/dio_consumer.dart';
import 'package:clothes_shop_app/core/api/end_point.dart';
import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:clothes_shop_app/core/error/failures.dart';
import 'package:clothes_shop_app/features/profile/data/models/profile_model.dart';
import 'package:clothes_shop_app/features/profile/domain/entities/profile_entity.dart';
import 'package:clothes_shop_app/features/profile/domain/repos/profile_repo.dart';
import 'package:dartz/dartz.dart';

class ProfileRepoImpl implements ProfileRepo {
  final DioConsumer dioConsumer;

  ProfileRepoImpl({required this.dioConsumer});

  @override
  Future<Either<Failure, ProfileEntity>> getProfileDataDetails() async {
    try {
      var response =
          await dioConsumer.get("${EndPoint.baseUrl}User/GetUserDetails");

      ProfileEntity profileDetails;
      profileDetails = ProfileModel.fromJson(response).toEntity();

      return Right(profileDetails);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      logger.e("Exception in  ProfileRepoImpl :$e");
      return Left(ServerFailure(e.toString()));
    }
  }
}
