part of mud;

class Bear extends Encounter {
  Bear() : super._();

  get damage_value => 5;
  
  whenEncounter() {
    return "grr grow, you encounter a bear!";
  }
}
