import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_search_test/domain/use_cases/offer_use_cases.dart';
import 'package:tickets_search_test/domain/use_cases/search_history_use_cases.dart';
import 'package:tickets_search_test/domain/use_cases/tickets_offer_use_cases.dart';

import 'package:tickets_search_test/presentation/mapper/states_mapper.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';

import '../../../domain/di/di_container.dart';
import '../../widgets/ticktes_search/app_search_ticket_dialog_widget.dart';


final ticketsSearchVMprovider =
    StateNotifierProvider<ITicketsSearchVM, TicketsSearchScreenState>((ref) {
  return TicketsSearchVM();
});

abstract class ITicketsSearchVM
    extends StateNotifier<TicketsSearchScreenState> {
  ITicketsSearchVM(super.state);

  void init();
  void onTapWhereField(BuildContext context);
  void onTapPromt(BuildContext context, int index);
  void onTapRoute(String value);
  void onChangeDate(BuildContext context);
  void onTapShowAllTickets();
  void clearWhereText();
  void swapRoutes();

  void showSearchTicketsDialog(BuildContext context);

  void onSelectReturnDate(BuildContext context);
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
    await _getHistoryFrom();

    await _getDataRDS();
  }

  @override
  void onTapWhereField(BuildContext context) {
    final city = state.controllerFrom.text;

    if (city.isNotEmpty) {
      getIt.get<SearchHistoryUseCases>().saveCityFrom(city);

      showSearchTicketsDialog(context);
    }
  }

  @override
  void onTapPromt(BuildContext context, int index) {
    switch (index) {
      case 0:
        RouterHelper.router.go(RouterHelper.difficultRoutePath);
        break;
      case 1:
        state.controllerWhere.text = 'Куда угодно';

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
    state.controllerWhere.text = value;

    _checkAllRoutePointsExists();
  }

  @override
  void onChangeDate(BuildContext context) async {
    final DateTime? selectedDate = await _selectDate(DateTime.now(),context);

    if (selectedDate != null) {
      state = state.copyWith(date: selectedDate);
    }
  }

  @override
  void onTapShowAllTickets() {
    Map<String, dynamic> extra = {
      'directionFrom': state.controllerFrom.text,
      'directionWhere': state.controllerWhere.text,
      'date': state.date,
      'returnDate': state.returnDate,
      'passengersCount': 1,
    };

    RouterHelper.router.go(
        '${RouterHelper.ticketsPath}/${RouterHelper.allTicketsPath}',
        extra: extra);
  }

  @override
  void clearWhereText() {
    state.controllerWhere.clear();
  }

  @override
  void swapRoutes() {
    state = state.copyWith(
        controllerFrom: state.controllerWhere,
        controllerWhere: state.controllerFrom);
  }

  @override
  void showSearchTicketsDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AppSearchTicketDialogWidget(
            onTapSufixIcon2: () => clearWhereText(),
            onTapPromt: onTapPromt,
            onTapRoute: (String value) => onTapRoute(value),
            controllerFrom: state.controllerFrom,
            controllerWhere: state.controllerWhere,
          );
        });
  }

  @override
  void onSelectReturnDate(BuildContext context) async {

    final date = await _selectDate(state.date, context);

    state = state.copyWith(returnDate: date);
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

  Future<void> _getHistoryFrom() async {
    final fromRoute = await getIt.get<SearchHistoryUseCases>().getCityFrom();

    if (fromRoute == null) return;

    state.controllerFrom.text = fromRoute;
  }

  Future<void> _getDataRDS() async {
    final offers = await getIt.get<OfferUseCases>().getAll();
    final ticketsOffers = await getIt.get<TicketsOfferUseCases>().getAll();

    state = state.copyWith(offers: offers, ticketsOffers: ticketsOffers);
  }

  Future<DateTime?> _selectDate(
      DateTime firstDate, BuildContext context) async {
    return await showDatePicker(
      context: context,
      locale: const Locale('ru', 'RU'),
      firstDate: firstDate,
      lastDate: DateTime(
          DateTime.now().year + 1, DateTime.now().month, DateTime.now().day),
      currentDate: state.date,
    );
  }
}
