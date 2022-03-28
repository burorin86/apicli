import 'package:chopper/chopper.dart';

part 'api_client.chopper.dart';

@ChopperApi(baseUrl: '/api/user')
abstract class ApiClient extends ChopperService {

  static ApiClient create([ChopperClient client]) => _$ApiClient(client);

  @Get(path: '/test')
  Future<Response> collApi({
    @Query('user_id') int userId = 1,
  });
}