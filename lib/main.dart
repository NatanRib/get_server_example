import 'package:get_server/get_server.dart';
import './pages/pages.dart';
main(){

  final app = GetServer(
    getPages: [
      GetPage(name: '/', page: HelloWorld()),
      GetPage(name: '/socket', page: Socket(), method: Method.ws),
    ]
  );
  app.start();

}