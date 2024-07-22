import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planear/model/schedule.dart';

class FullDayInfoProvider extends StateNotifier<List<Schedule>> {
  FullDayInfoProvider() : super([]);

  void setSchedule(List<Schedule> value) {
    state = value;
  }

  void addSchedule(List<Schedule> value) {
    state = [
      ...state,
      ...value,
    ];
  }

  void endSchedule(int id) {
    state = [
      for (Schedule schedule in state)
        if (schedule.id == id)
          Schedule(
              id: id,
              start: schedule.start,
              end: schedule.end,
              title: schedule.title,
              categoryId: schedule.categoryId,
              detail: schedule.detail,
              finish: true)
        else
          schedule
    ];
  }

  void changeSchedule(Schedule newSchedule) {
    state = [
      for (final schedule in state)
        if (schedule.id == newSchedule.id) newSchedule else schedule
    ];
  }

  void removeSchedule(Schedule value) {
    state = state.where((schedule) => schedule.id != value.id).toList();
  }
}

final fullDayStateNotifierProvider =
    StateNotifierProvider<FullDayInfoProvider, List<Schedule>>((ref) {
  return FullDayInfoProvider();
});
