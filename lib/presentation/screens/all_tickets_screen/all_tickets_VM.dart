import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tickets_search_test/domain/use_cases/ticket_use_cases.dart';
import 'package:tickets_search_test/presentation/mapper/states_mapper.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';

import '../../../domain/di/di_container.dart';

final allTicketsProvider =
    StateNotifierProvider<IAllTicketsVM, AllTicketsState>(
        (ref) => AllTicketsVM());

abstract class IAllTicketsVM extends StateNotifier<AllTicketsState> {
  IAllTicketsVM(super.state);

  void init();
  void onTapBack();
}

class AllTicketsVM extends IAllTicketsVM {
  AllTicketsVM() : super(AllTicketsState(tickets: [])) {
    init();
  }

  @override
  void init() async {
    final tickets = await getIt.get<TicketUseCases>().getAll();
    state = state.copyWith(tickets: tickets);
  }

  @override
  void onTapBack() {
    RouterHelper.router.pop();
  }
}
