import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_search_test/domain/use_cases/offer_use_cases.dart';
import 'package:tickets_search_test/domain/use_cases/tickets_offer_use_cases.dart';

import 'package:tickets_search_test/presentation/mapper/states_mapper.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';

import '../../../../../domain/di/di_container.dart';
import '../../../../widgets/ticktes_search/app_search_ticket_dialog_widget.dart';

final ticketsSearchVMprovider =
    StateNotifierProvider<ITicketsSearchVM, TicketsSearchScreenState>((ref) {
  return TicketsSearchVM();
});

// abstract class ITicketsSearchVM extends StateNotifier {
//   ITicketsSearchVM(super._state,
//       );

//   void onTapWhereField(BuildContext context, WidgetRef ref);
//   void onTapPromt(BuildContext context, WidgetRef ref, int index);
//   void onTapRoute(String value, WidgetRef ref);
//   void onChangeDate(BuildContext context, WidgetRef ref);

//   void onTapShowAllTickets(WidgetRef ref);
// }

abstract class ITicketsSearchVM extends StateNotifier<TicketsSearchScreenState> {
  ITicketsSearchVM(super.state);

  void init();
  void onTapWhereField(BuildContext context);
  void onTapPromt(BuildContext context, int index);
  void onTapRoute(String value);
  void onChangeDate(BuildContext context);
  void onTapShowAllTickets();
}

class TicketsSearchVM extends ITicketsSearchVM {
  TicketsSearchVM()
      : super(TicketsSearchScreenState(
          controllerFrom: TextEditingController(),
          controllerWhere: TextEditingController(),
          directionWhereChosen: false,
          offers: [],
          ticketsOffers: [],
          date: DateTime.now(),
        )) {
    init();
  }

  @override
  void init() async {
    final offers = await getIt.get<OfferUseCases>().getAll();
    final ticketsOffers = await getIt.get<TicketsOfferUseCases>().getAll();

    state = state.copyWith(offers: offers, ticketsOffers: ticketsOffers);
  }

  @override
  void onTapWhereField(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AppSearchTicketDialogWidget(
            onTapPromt: onTapPromt,
            onTapRoute: (String value) => onTapRoute(value),
            controllerFrom: state.controllerFrom,
            controllerWhere: state.controllerWhere,
          );
        });
  }

  @override
  void onTapPromt(BuildContext context, int index) {
    switch (index) {
      case 0:
        RouterHelper.router.go(RouterHelper.difficultRoutePath);
        break;
      case 1:
        TextEditingController controllerWhere = state.controllerWhere;

        controllerWhere.text = 'Куда угодно';

        state = state.copyWith(controllerWhere: controllerWhere);

        _checkAllRoutePointsExists();

        break;

      case 2:
        RouterHelper.router.go(RouterHelper.holidaysPath);
        break;
      case 3:
        RouterHelper.router.go(RouterHelper.hotTicketsPath);
        break;
    }
  }

  @override
  void onTapRoute(String value) {
    TextEditingController controllerWhere = state.controllerWhere;

    controllerWhere.text = value;

    state = state.copyWith(controllerWhere: controllerWhere);

    _checkAllRoutePointsExists();
  }

  @override
  void onChangeDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      locale: const Locale('ru', 'RU'),
      firstDate: DateTime.now(),
      lastDate: DateTime(
          DateTime.now().year + 1, DateTime.now().month, DateTime.now().day),
      currentDate: state.date,
    );

    if (selectedDate != null) {
      state = state.copyWith(date: selectedDate);
      print('Выбранная дата: $selectedDate');
    } else {
      // Дата не выбрана
      print('Дата не выбрана');
    }
  }

  @override
  void onTapShowAllTickets() {
    Map<String, dynamic> extra = {
      'directionFrom': state.controllerFrom.text,
      'directionWhere': state.controllerWhere.text,
      'date': state.date,
      'passengersCount': 1,
    };

    RouterHelper.router.go(
        '${RouterHelper.ticketsPath}/${RouterHelper.allTicketsPath}',
        extra: extra);
  }

  // Приватные методы

  void _checkAllRoutePointsExists() {
    if (state.controllerFrom.text.isEmpty ||
        state.controllerWhere.text.isEmpty) {
      return;
    }

    state = state.copyWith(directionWhereChosen: true);
    RouterHelper.instance.context.pop();
  }
}
