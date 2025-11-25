import 'package:graduation_project/core/network/api_services.dart';
import 'package:graduation_project/features/auth/login/data/data_source/login_ds.dart';
import 'package:graduation_project/features/auth/login/data/model/request/login_request_dto.dart';
import 'package:graduation_project/features/auth/login/data/model/response/login_response_dto.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: LoginDataSource)
class LoginDataSourceImp implements LoginDataSource {
  final ApiServices _apiServices;
  LoginDataSourceImp(this._apiServices);
  @override
  Future<LoginResponseDto> login(LoginRequestDto loginRequestDto) {
    return _apiServices.loginUser(loginRequestDto);
  }
}
