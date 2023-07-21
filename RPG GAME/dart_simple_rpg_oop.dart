import 'helper.dart';

void main() {
  String playerName = prompt('Enter your name: ');
  print('Welcome to the game, $playerName!');


  Character player = Player(10, playerName, 100);
  Character monster = Monster(5, 'Dragon', 50);  

  bool isRunning = true;

  print('Your opponent is ${monster.name}.');

  while (isRunning) {
    print('What do you want to do? (attack/heal)');

    String choice = prompt('> ');

    switch (choice.toLowerCase()) {
      case 'attack':
      case 'a':
        player.attack(monster);
        break;
      case 'heal':
      case 'h':

        (player as Player).heal(10);

        break;
      default:
        print('Invalid choice. Try again.');
    }

    if (!monster.isAlive()) {
      print('Congratulations, ${player.name}! You won!');
      isRunning = false;
    } else {

      monster.attack(player);
    
      // print(
      //   '${monster.name} attacked ${player.name} and deals $damage damage!',
      // );
      // print('${player.name} has ${player.health} health points left.');

      if (!player.isAlive()) {
        print('Sorry, ${player.name}. You lost.');
        isRunning = false;
      }
    }
  }

  print('Thanks for playing!');
}



 