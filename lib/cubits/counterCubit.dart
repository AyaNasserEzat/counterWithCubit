
//import 'dart:ffi';

import 'package:counterapp/cubits/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterCubit extends Cubit<counterState>{
  counterCubit():super (incrementState());
//var
int counter=0;
//function
void incremente( ){

  counter++;
  emit(incrementState());

}
void decremente(){
  
  counter--;
  emit(decrementState());

}

}