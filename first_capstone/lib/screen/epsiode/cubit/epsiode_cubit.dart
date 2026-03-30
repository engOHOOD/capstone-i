import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'epsiode_state.dart';

class EpsiodeCubit extends Cubit<EpsiodeState> {
  EpsiodeCubit() : super(EpsiodeInitial());
}
