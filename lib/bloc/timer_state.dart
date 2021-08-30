import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable {
  final int duration;
  TimerState(this.duration);
  @override
  List<Object> get props => [duration];
}

class Ready extends TimerState {
  Ready(int duration) : super(duration);
}

class Paused extends TimerState {
  Paused(int duration) : super(duration);
}

class Running extends TimerState {
  Running(int duration) : super(duration);
}

class Finished extends TimerState {
  Finished(int duration) : super(0);
}
