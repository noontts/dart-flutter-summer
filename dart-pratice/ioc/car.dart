void main() {
  final engine = HybridEngine(ElectricEngine(), CombustionEngine());
  final car = Car(engine);

  car.start();
  car.move(35);
  car.move(39);
  car.move(45);
  car.move(15);
  car.stop();

  car.start();
  car.move(30);
  car.move(35);
  car.move(49);
  car.move(15);
  car.stop();
}

class Car {
  final Engine engine;

  Car(this.engine);

  void start() {
    engine.start();
  }

  void move(int speed) {
    engine.move(speed);
  }

  void stop() {
    engine.stop();
  }
}

abstract class Engine {
  void start();
  void stop();
  void move(int speed);
}

class HybridEngine implements Engine {
  final Engine electricEngine;
  final Engine combustionEngine;

  HybridEngine(this.electricEngine, this.combustionEngine);

  void start() {
    this.electricEngine.start();
  }

  void stop() {
    this.electricEngine.stop();
  }

  void move(int speed) {
    if (speed > 40) {
      combustionEngine.start();
      combustionEngine.move(speed);
    } else {
      combustionEngine.stop();
    }

    electricEngine.move(speed);
  }
}

class ElectricEngine implements Engine {
  void start() {
    print("....");
  }

  void stop() {
    print("....?");
  }

  void move(int speed) {
    print('...... $speed km/hr');
  }
}

class CombustionEngine implements Engine {
  void start() {
    print('Brrrrr');
  }

  void stop() {
    print('EIADDDDD!!');
  }

  void move(int speed) {
    print('แง้นนนนน $speed km/hr');
  }
}
