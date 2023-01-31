abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class CounterPlusState extends CounterStates {
  final int counter;

  CounterPlusState(this.counter);
}

class CounterMinisState extends CounterStates {
   final int counter;

  CounterMinisState(this.counter);
}
