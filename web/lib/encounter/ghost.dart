part of mud;

class Ghost extends Encounter {
  Ghost() : super._();

  get damage_value => 3;

  whenEncounter() {
    return "Booh, you encounter a Ghost!";
  }
}
