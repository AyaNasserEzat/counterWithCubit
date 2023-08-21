import 'package:counterapp/cubits/counterCubit.dart';
import 'package:counterapp/cubits/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('you have push the button many times'),
          BlocConsumer<counterCubit,counterState>(builder: (context,state){
            return (Text(BlocProvider.of<counterCubit>(context).counter.toString()));
          },
          listener: (context,State){

          }
          
          ) ,
        ]),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
BlocProvider.of<counterCubit>(context).incremente();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<counterCubit>(context).decremente();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
