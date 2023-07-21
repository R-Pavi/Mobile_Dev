import 'dart:io';
import 'dart:math';

String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync()!;
}


abstract class BaseCharacter{
  void attack(Character character);
  bool isAlive();
}

class Character implements BaseCharacter{
    late int health;
    final int strength;
    final String name;

    Character(this.strength, this.name, this.health);

     void attack(Character character){
       int damage = strength + Random().nextInt(10);
        character.health -= damage;

        print(
          '${name} attacked ${character.name} and deals $damage damage!',
        );
        print('${name} has ${health} health points left.');
        print('${character.name} has ${character.health} health points left.');
    }

       
    bool isAlive(){
      return health > 0;
    }

}

  class Player extends Character{

    Player(super.strength,super.name, super.health);

     void heal(int amount){
      health += 10;
      health = health > 100 ? 100 : health;

       print('${name} healed 10 health points!');
        print('${name} has ${health} health points left.');
    }
   
  }

  class Monster extends Character{ 
     Monster(super.strength,super.name, super.health);

     @override
     bool isAlive(){
      return health > 10;
     }
  }

   

    // void attack(Monster enemy){
    //   int damage = strength + Random().nextInt(10);
    //     enemy.health -= damage;

    //     print(
    //       '${name} attacked ${enemy.name} and deals $damage damage!',
    //     );
    //     print('${name} has ${health} health points left.');
    //     print('${enemy.name} has ${enemy.health} health points left.');
    // }

    // void takeDamage(Monster enemy, int damage){
    //     int damage = enemy.strength + Random().nextInt(5);
    //   health -= damage;

    //   print(
    //     '${enemy.name} attacked ${name} and deals $damage damage!',
    //   );
    //   print('${name} has ${health} health points left.');
    // }

   



