import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'all_episodes_state.dart';

class AllEpisodesCubit extends Cubit<AllEpisodesState> {
  AllEpisodesCubit() : super(AllEpisodesInitial());
}
