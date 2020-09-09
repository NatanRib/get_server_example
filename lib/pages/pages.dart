import 'dart:async';

import 'package:get_server/get_server.dart';

class HelloWorld extends GetView{
  @override
  FutureOr build(Context response) {
    response.sendJson({'mensage': 'Hello GetServer'});
  }
  
}

class Socket extends GetView{
  @override
  FutureOr build(Context response) {
    response.ws.listen((event) {
      event.onMessage.listen((data){ 
        print('data $data');
        event.send('mensage: $data');
      });
      event.onOpen.listen((data)=> print('Socket open'));
      event.onClose.listen((data)=> print('Socket close'));
      
    });
  }
  
}
