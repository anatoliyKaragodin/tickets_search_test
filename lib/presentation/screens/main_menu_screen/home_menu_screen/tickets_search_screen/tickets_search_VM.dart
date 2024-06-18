
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';

import '../../../../widgets/ticktes_search/app_search_ticket_dialog_widget.dart';

abstract class ITicketsSearchVM {
  ITicketsSearchVM(
      {required this.offersProvider,
      required this.ticketsOffersProvider,
      required this.ticketsProvider});

  final FutureProvider<List<OfferEntity>> offersProvider;
  final FutureProvider<List<TicketEntity>> ticketsProvider;
  final FutureProvider<List<TicketsOfferEntity>> ticketsOffersProvider;

  StateProvider<TextEditingController> get controllerFromProvider;
  StateProvider<TextEditingController> get controllerWhereProvider;

  StateProvider<bool> get directionWhereChosen;
  StateProvider<DateTime> get date;

  void onTapWhereField(BuildContext context, WidgetRef ref);
  void onTapPromt(BuildContext context, WidgetRef ref, int index);
  void onTapRoute(String value, WidgetRef ref);
  void onChangeDate(BuildContext context, WidgetRef ref);
}

class TicketsSearchVM implements ITicketsSearchVM {
  @override
  final FutureProvider<List<OfferEntity>> offersProvider;

  @override
  final FutureProvider<List<TicketEntity>> ticketsProvider;

  @override
  final FutureProvider<List<TicketsOfferEntity>> ticketsOffersProvider;

  TicketsSearchVM(
      {required this.offersProvider,
      required this.ticketsOffersProvider,
      required this.ticketsProvider});

  final _controllerFromProvider =
      StateProvider((ref) => TextEditingController());

  final _controllerWhereProvider =
      StateProvider((ref) => TextEditingController());

  final _directionWhereChosen = StateProvider<bool>((ref) => false);

  final _dateProvider = StateProvider<DateTime>((ref) => DateTime.now());

  @override
  StateProvider<TextEditingController> get controllerFromProvider =>
      _controllerFromProvider;

  @override
  StateProvider<TextEditingController> get controllerWhereProvider =>
      _controllerWhereProvider;

  @override
  StateProvider<bool> get directionWhereChosen => _directionWhereChosen;

  @override
  StateProvider<DateTime> get date => _dateProvider;

  @override
  void onTapWhereField(BuildContext context, WidgetRef ref) {
    showDialog(
        context: context,
        builder: (context) {
          return AppSearchTicketDialogWidget(
            onTapPromt: onTapPromt,
            onTapRoute: (String value) => onTapRoute(value, ref),
            controllerFrom: ref.watch(_controllerFromProvider),
            controllerWhere: ref.watch(_controllerWhereProvider),
          );
        });
  }

  @override
  void onTapPromt(BuildContext context, WidgetRef ref, int index) {
    switch (index) {
      case 0:
        RouterHelper.router.go(RouterHelper.difficultRoutePath);
        break;
      case 1:
        ref.read(_controllerWhereProvider.notifier).update((state) {
          state.text = 'Куда угодно';

          return state;
        });

        _checkAllRoutePointsExists(ref);

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
  void onTapRoute(String value, WidgetRef ref) {
    ref.read(_controllerWhereProvider.notifier).update((state) {
      state.text = value;
      return state;
    });
    _checkAllRoutePointsExists(ref);
  }

  @override
  void onChangeDate(BuildContext context, WidgetRef ref) async {
    print('onChangedate');

    final DateTime? selectedDate = await showDatePicker(
      context: context,
      locale: const Locale('ru', 'RU'),
      firstDate: DateTime.now(),
      lastDate: DateTime(
          DateTime.now().year + 1, DateTime.now().month, DateTime.now().day),
      currentDate: ref.read(_dateProvider),
    );

    if (selectedDate != null) {
      ref.read(_dateProvider.notifier).update((state) => selectedDate);
      print('Выбранная дата: $selectedDate');
    } else {
      // Дата не выбрана
      print('Дата не выбрана');
    }
  }

  // Приватные методы

  void _checkAllRoutePointsExists(WidgetRef ref) {
    if (ref.read(_controllerFromProvider).text.isEmpty ||
        ref.read(_controllerWhereProvider).text.isEmpty) {
      return;
    }

    ref.read(_directionWhereChosen.notifier).update((state) => true);
    RouterHelper.instance.context.pop();
  }
}
