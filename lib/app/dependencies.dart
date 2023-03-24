import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_clone/feature/notes/notes.dart';

class InjectBusinessLogic extends StatelessWidget {
  const InjectBusinessLogic({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NoteCubit>(
      create: (context) => NoteCubit(context.read<NotesRepository>()),
      child: child,
    );
  }
}

class InjectRepositories extends StatelessWidget {
  const InjectRepositories({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<NotesRepository>(
      create: (_) => HiveNotesRepository(),
      child: child,
    );
  }
}
