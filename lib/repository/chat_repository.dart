import 'package:socket_io_client/socket_io_client.dart' as IO;

const String _url = "http://localhost:8000";

class ChatRepository {
  IO.Socket socket;

  ChatRepository() {
    socket = IO.io(_url);
    socket.on("connected", (data) => print(data));
  }

  void sendMessage(String message){
    socket.emit("message", message);
  }
}
