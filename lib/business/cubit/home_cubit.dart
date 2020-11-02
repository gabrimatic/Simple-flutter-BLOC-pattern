import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:simple_flutter_bloc/business/models/user.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(HomeCubitStateInitial());

  Future<void> loadData() async {
    emit(HomeCubitStateLoading());
    var list = await UserModel.getAllUsers();
    emit(HomeCubitStateLoaded(list));
  }

  void removeItem(UserModel newModel) {
    try {
      if (state is HomeCubitStateLoaded) {
        (state as HomeCubitStateLoaded)
            .userList
            .removeWhere((e) => e.id == newModel.id);
        emit(HomeCubitStateLoaded((state as HomeCubitStateLoaded).userList));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
