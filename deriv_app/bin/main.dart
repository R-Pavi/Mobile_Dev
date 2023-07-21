import 'dart:async';
import 'dart:convert';
import 'dart:io';

const String url =
    'wss://ws.binaryws.com/websockets/v3?app_id=31063&l=EN&brand=deriv';

WebSocket? socket;

Future<void> main() async {
  // Connect to websocket.
  socket = await WebSocket.connect(url);
  printGreen('Websocket is connected');
  handleInput();

  // Listen for messages.
  socket?.listen((dynamic e) {
    final Map<String, dynamic> data = jsonDecode(e);
    handlePing(data);
    handleActiveSymb(data);
    handleInput();
  });
  // Get user command.
}
 void handleInput() {
    printYellow('Enter your command:');
    final String? command = stdin.readLineSync();

    switch (command) {
      case 'ping':
        sendPing();
        break;

        case 'symbols':
        activeSymbols();
        break;
        

      default:
        printRed('Enter the correct command');
        handleInput();
    }
  }

void sendPing() {
  // Send ping request.
  final Map<String, dynamic> jsonMap = {"ping": 1};

  final jsonString = jsonEncode(jsonMap);
  socket?.add(jsonString);
}

void handlePing(Map<String, dynamic> data) {
  if (data['msg_type'] == 'ping') {
    // Handle ping response.
    printGreen('${data['ping']}');
  }
}


class ActiveSymbReq{
  ActiveSymbReq({required this.active_symbols, required this.product_type});
 
  final String active_symbols;
  final String product_type;

  String? toJson(){
    final Map<String, String> symb = {
      'active_symbols': active_symbols,
      'product_type' : product_type,

    };

    return jsonEncode(symb);
  }  
}

class ActiveSymbResponse{
  ActiveSymbResponse({required this.market, required this.displayName, required this.symbol});
  final String market;
  final String displayName;
  final String symbol;


    static ActiveSymbResponse fromJson(Map<String, dynamic> response) {

    return ActiveSymbResponse(
      displayName: response['display_name'],
      market: response['market'],
      symbol: response['symbol'],
      
    );
  }

  @override
  String toString() { 
   return displayName + ":::::::" + market + ":::::::::" + symbol;
  }
}

void activeSymbols(){
  final ActiveSymbReq activeSymbReq = 
  ActiveSymbReq(active_symbols:"brief", product_type:"basic");
  socket!.add(activeSymbReq.toJson());
}

void handleActiveSymb(Map<String, dynamic> jsonResponse) {
  if (jsonResponse['msg_type'] != 'active_symbols') {
    return;
  }
  (jsonResponse["active_symbols"] as List).forEach((element) {
    final ActiveSymbResponse symbol = ActiveSymbResponse.fromJson(element);
    printGreen(symbol.toString());
  });
  }


void printGreen(String text) {
  print('\x1B[32m$text\x1B[0m');
}

void printRed(String text) {
  print('\x1B[31m$text\x1B[0m');
}

void printYellow(String text) {
  print('\x1B[33m$text\x1B[0m');
}


