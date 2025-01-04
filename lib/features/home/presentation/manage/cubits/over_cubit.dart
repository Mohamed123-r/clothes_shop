import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'over_state.dart';

class OverCubit extends Cubit<OverState> {
  OverCubit() : super(OverInitial());
}
