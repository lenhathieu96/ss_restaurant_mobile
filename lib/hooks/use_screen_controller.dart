import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ss_restaurant/services/core/mscreen_controller.dart';

MScreenController<S, D> useScreenController<S, D extends StateNotifier<S>>(
    WidgetRef ref, AutoDisposeStateNotifierProvider<D, S> provider) {
  final state = ref.watch(provider);
  final dispatcher = ref.read(provider.notifier);

  return MScreenController<S, D>(state: state, dispatcher: dispatcher);
}
