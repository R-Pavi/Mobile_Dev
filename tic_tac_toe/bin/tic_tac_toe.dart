import 'dart:io';

void main() {
  var board = List.generate(3, (_) => List.filled(3, '-'));
  var player = 'X';
  printBoard(board, player);

  while (!checkWin(board, player) && !checkTie(board)) {
    print("Player $player, choose a row (1-3):");
    int row = int.parse(stdin.readLineSync()!);
    print("Player $player , choose a column (1-3):");
    int column = int.parse(stdin.readLineSync()!);

    if (board[row - 1][column - 1] == '-') {
      board[row - 1][column - 1] = player;
    } else {
      print('Spot already taken, try again.');
      continue;
    }

    // switch player
    player = player == 'X' ? 'O' : 'X';

    // print updated board
    printBoard(board, player);
  }
  if (checkWin(board, player)) {
    print('Player $player wins!');
  } else {
    print('Tie game!');
  }
  
}

void printBoard(List<List<String>> board, String player) {
  for (int i = 0; i < 3; i++) {
    print(board[i].join(' '));
  }
}

bool checkWin(List<List<String>> board, String player) {
  //check win

  //checking row
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == player &&
        board[i][1] == player &&
        board[i][2] == player) {
      return true;
    }
  }
  //check column
    for (int i = 0; i < 3; i++) {
    if (board[0][i] == player &&
        board[1][i] == player &&
        board[2][i] == player) {
      return true;
    }
  }

  //check diagonal
  if (board[0][0]== player && board[1][1] == player && board[2][2] == player ){
    return true;
  }
   if (board[0][2]== player && board[1][1] == player && board[2][0] == player ){
    return true;
  }

  return false;
}

bool checkTie(List<List<String>> board) {
  //check tie
   for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == '-') {
        return false;
      }
    }
  }
  return true;
}
