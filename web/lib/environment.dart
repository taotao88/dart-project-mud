part of mud;

class Environment {
  String _name;

  Environment(name) {
    this.name = name;
  }

  Encounter encounter = new Encounter({});

  String stumbleUpon() {
    this.encounter = new Encounter({"damage": 3, "number": 6});
    var done_damage = damage;
    var interaction = "${this._name} stumbled upon something... ${this.encounter.whenEncounter()}";
    if(done_damage > 0) {
      interaction = "$interaction <br /> You have ${done_damage} damage!";
    }

    return interaction;
  }

  get damage => encounter.damage_value;

  set name(name) {
    this._name = "${name} - ";
  }
}
