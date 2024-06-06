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

  void onTapWhereField(BuildContext context, WidgetRef ref);
  void onTapPromt(BuildContext context, WidgetRef ref, int index);
  void onTapRoute(String value, WidgetRef ref);
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

  @override
  StateProvider<TextEditingController> get controllerFromProvider =>
      _controllerFromProvider;

  @override
  StateProvider<TextEditingController> get controllerWhereProvider =>
      _controllerWhereProvider;

  @override
  StateProvider<bool> get directionWhereChosen => _directionWhereChosen;

  // @override
  // StateProvider<List<OfferEntity>> get offersProvider => offersProvider;

  // @override
  // StateProvider<List<TicketsOfferEntity>> get ticketsOffersProvider =>
  //     _ticketsOffersProvider;

  // @override
  // StateProvider<List<TicketEntity>> get ticketsProvider => _ticketsProvider;

  // void init() {
  //   state = HomeMenuScreenState(
  //       controllerFrom: TextEditingController(),
  //       controllerWhere: TextEditingController(),
  //       directionWhereChosen: false);
  // }

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

  void _checkAllRoutePointsExists(WidgetRef ref) {
    if (ref.read(_controllerFromProvider).text.isEmpty ||
        ref.read(_controllerWhereProvider).text.isEmpty) {
      return;
    }

    ref.read(_directionWhereChosen.notifier).update((state) => true);
    RouterHelper.instance.context.pop();
  }
}

// final homeMenuScreenStateProvider =
//     StateNotifierProvider<HomeMenuScreenVM, HomeMenuScreenState>((ref) =>
//         HomeMenuScreenVM(HomeMenuScreenState(
//             controllerFrom: TextEditingController(),
//             controllerWhere: TextEditingController(),
//             directionWhereChosen: false)));

// class HomeMenuScreenVM extends StateNotifier<HomeMenuScreenState> {
//   HomeMenuScreenVM(super.state) {
//     init();
//   }

//   void init() {
//     state = HomeMenuScreenState(
//         controllerFrom: TextEditingController(),
//         controllerWhere: TextEditingController(),
//         directionWhereChosen: false);
//   }

//   onTapWhereField(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AppSearchTicketDialogWidget(
//             onTapPromt: onTapPromt,
//             onTapRoute: (String value) => onTapRoute(value),
//             controllerFrom: state.controllerFrom,
//             controllerWhere: state.controllerWhere,
//           );
//         });
//   }

//   void onTapPromt(BuildContext context, int index) {
//     switch (index) {
//       case 0:
//         RouterHelper.router.go(RouterHelper.difficultRoutePath);
//         break;
//       case 1:
//         TextEditingController newWhereController = state.controllerWhere;
//         newWhereController.text = 'Куда угодно';
//         state = state.copyWith(controllerWhere: newWhereController);
//         _checkAllRoutePointsExists();
//         break;
//       case 2:
//         RouterHelper.router.go(RouterHelper.holidaysPath);
//         break;
//       case 3:
//         RouterHelper.router.go(RouterHelper.hotTicketsPath);
//         break;
//     }
//   }

//   void onTapRoute(String value) {
//     TextEditingController newWhereController = state.controllerWhere;
//     newWhereController.text = value;
//     state = state.copyWith(controllerWhere: newWhereController);
//     _checkAllRoutePointsExists();
//   }

//   void _checkAllRoutePointsExists() {
//     if (state.controllerFrom.text.isEmpty ||
//         state.controllerWhere.text.isEmpty) {
//       return;
//     }

//     state = state.copyWith(directionWhereChosen: true);
//     RouterHelper.instance.context.pop();
//   }
// }


// // abstract class IHomeMenuScreenWM extends StateNotifierProvider<HomeMenuScreenState>{
// //   TextEditingController get controllerFrom;
// //   TextEditingController get controllerWhere;
// //   void onTapWhere(BuildContext context);
// //   void onTapPromt(BuildContext context, int index);
// //   void onTapRoute(int index);
// // }

// // class HomeMenuScreenWM implements IHomeMenuScreenWM {
// //   final TextEditingController _controllerFrom = TextEditingController();
// //   final TextEditingController _controllerWhere = TextEditingController();

// //   @override
// //   TextEditingController get controllerFrom => _controllerFrom;

// //   @override
// //   TextEditingController get controllerWhere => _controllerWhere;

// //   @override
// //   void onTapPromt(BuildContext context, int index) {
// //     switch (index) {
// //       case 0:
// //         RouterHelper.router.go(RouterHelper.difficultRoutePath);
// //       case 1:
// //         controllerWhere.text = 'Куда угодно';
// //       case 2:
// //         RouterHelper.router.go(RouterHelper.holidaysPath);
// //       case 3:
// //         RouterHelper.router.go(RouterHelper.hotTicketsPath);
// //     }
// //     print(controllerWhere.text);
// //   }

// //   @override
// //   void onTapRoute(int index) {
// //     // TODO: implement onTapRoute
// //   }

// //   @override
// //   void onTapWhere(BuildContext context) {
// //     showDialog(
// //         context: context,
// //         builder: (context) {
// //           return AppSearchTicketDialogWidget(
// //             onTapPromt: onTapPromt,
// //             onTapRoute: onTapRoute,
// //             controllerFrom: controllerFrom,
// //             controllerWhere: controllerWhere,
// //           );
// //         });
// //   }
// // }
