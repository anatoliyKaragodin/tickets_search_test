import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tickets_search_test/presentation/screens/tickets_search_screen/tickets_search_VM.dart';
import 'package:tickets_search_test/presentation/widgets/ticktes_search/app_search_tickets_direction_chosen_widget.dart';
import 'package:tickets_search_test/presentation/widgets/ticktes_search/app_search_tickets_start_widget.dart';

class TicketsSearchScreen extends ConsumerWidget {
  const TicketsSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ticketsSearchVMprovider);
    return state.directionWhereChosen
        ? AppSearchTicktesDirectionChosenWidget(state: state)
        : AppSearchTicketsStartWidget(state: state);
  }
}
