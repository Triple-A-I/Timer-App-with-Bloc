import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class TimerEvent extends Equatable {
  TimerEvent();
  @override
  List<Object> get props => [];
}

class Start extends TimerEvent {
  final int duration;
  Start({@required this.duration});
  @override
  String toString() {
    return "Start {duration: $duration}";
  }
}

class Pause extends TimerEvent {}

class Resume extends TimerEvent {}

class Reset extends TimerEvent {}

class Tick extends TimerEvent {
  final int duration;
  Tick({@required this.duration});

  @override
  List<Object> get props => [duration];

  @override
  String toString() {
    return "Tick {duaration : $duration}";
  }
}
